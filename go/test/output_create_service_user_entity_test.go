package sdktest

import (
	"encoding/json"
	"os"
	"path/filepath"
	"runtime"
	"strings"
	"testing"
	"time"

	sdk "github.com/voxgig-sdk/bluefin-tecs-user-backoffice-sdk/go"
	"github.com/voxgig-sdk/bluefin-tecs-user-backoffice-sdk/go/core"

	vs "github.com/voxgig-sdk/bluefin-tecs-user-backoffice-sdk/go/utility/struct"
)

func TestOutputCreateServiceUserEntity(t *testing.T) {
	t.Run("instance", func(t *testing.T) {
		testsdk := sdk.TestSDK(nil, nil)
		ent := testsdk.OutputCreateServiceUser(nil)
		if ent == nil {
			t.Fatal("expected non-nil OutputCreateServiceUserEntity")
		}
	})

	t.Run("basic", func(t *testing.T) {
		setup := output_create_service_userBasicSetup(nil)
		// Per-op sdk-test-control.json skip — basic test exercises a flow
		// with multiple ops; skipping any op skips the whole flow.
		_mode := "unit"
		if setup.live {
			_mode = "live"
		}
		for _, _op := range []string{"create"} {
			if _shouldSkip, _reason := isControlSkipped("entityOp", "output_create_service_user." + _op, _mode); _shouldSkip {
				if _reason == "" {
					_reason = "skipped via sdk-test-control.json"
				}
				t.Skip(_reason)
				return
			}
		}
		// The basic flow consumes synthetic IDs from the fixture. In live mode
		// without an *_ENTID env override, those IDs hit the live API and 4xx.
		if setup.syntheticOnly {
			t.Skip("live entity test uses synthetic IDs from fixture — set BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_CREATE_SERVICE_USER_ENTID JSON to run live")
			return
		}
		client := setup.client

		// CREATE
		outputCreateServiceUserRef01Ent := client.OutputCreateServiceUser(nil)
		outputCreateServiceUserRef01Data := core.ToMapAny(vs.GetProp(
			vs.GetPath([]any{"new", "output_create_service_user"}, setup.data), "output_create_service_user_ref01"))

		outputCreateServiceUserRef01DataResult, err := outputCreateServiceUserRef01Ent.Create(outputCreateServiceUserRef01Data, nil)
		if err != nil {
			t.Fatalf("create failed: %v", err)
		}
		outputCreateServiceUserRef01Data = core.ToMapAny(outputCreateServiceUserRef01DataResult)
		if outputCreateServiceUserRef01Data == nil {
			t.Fatal("expected create result to be a map")
		}

	})
}

func output_create_service_userBasicSetup(extra map[string]any) *entityTestSetup {
	loadEnvLocal()

	_, filename, _, _ := runtime.Caller(0)
	dir := filepath.Dir(filename)

	entityDataFile := filepath.Join(dir, "..", "..", ".sdk", "test", "entity", "output_create_service_user", "OutputCreateServiceUserTestData.json")

	entityDataSource, err := os.ReadFile(entityDataFile)
	if err != nil {
		panic("failed to read output_create_service_user test data: " + err.Error())
	}

	var entityData map[string]any
	if err := json.Unmarshal(entityDataSource, &entityData); err != nil {
		panic("failed to parse output_create_service_user test data: " + err.Error())
	}

	options := map[string]any{}
	options["entity"] = entityData["existing"]

	client := sdk.TestSDK(options, extra)

	// Generate idmap via transform, matching TS pattern.
	idmap := vs.Transform(
		[]any{"output_create_service_user01", "output_create_service_user02", "output_create_service_user03"},
		map[string]any{
			"`$PACK`": []any{"", map[string]any{
				"`$KEY`": "`$COPY`",
				"`$VAL`": []any{"`$FORMAT`", "upper", "`$COPY`"},
			}},
		},
	)

	// Detect ENTID env override before envOverride consumes it. When live
	// mode is on without a real override, the basic test runs against synthetic
	// IDs from the fixture and 4xx's. Surface this so the test can skip.
	entidEnvRaw := os.Getenv("BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_CREATE_SERVICE_USER_ENTID")
	idmapOverridden := entidEnvRaw != "" && strings.HasPrefix(strings.TrimSpace(entidEnvRaw), "{")

	env := envOverride(map[string]any{
		"BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_CREATE_SERVICE_USER_ENTID": idmap,
		"BLUEFINTECSUSERBACKOFFICE_TEST_LIVE":      "FALSE",
		"BLUEFINTECSUSERBACKOFFICE_TEST_EXPLAIN":   "FALSE",
		"BLUEFINTECSUSERBACKOFFICE_APIKEY":         "NONE",
	})

	idmapResolved := core.ToMapAny(env["BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_CREATE_SERVICE_USER_ENTID"])
	if idmapResolved == nil {
		idmapResolved = core.ToMapAny(idmap)
	}

	if env["BLUEFINTECSUSERBACKOFFICE_TEST_LIVE"] == "TRUE" {
		mergedOpts := vs.Merge([]any{
			map[string]any{
				"apikey": env["BLUEFINTECSUSERBACKOFFICE_APIKEY"],
			},
			extra,
		})
		client = sdk.NewBluefinTecsUserBackofficeSDK(core.ToMapAny(mergedOpts))
	}

	live := env["BLUEFINTECSUSERBACKOFFICE_TEST_LIVE"] == "TRUE"
	return &entityTestSetup{
		client:        client,
		data:          entityData,
		idmap:         idmapResolved,
		env:           env,
		explain:       env["BLUEFINTECSUSERBACKOFFICE_TEST_EXPLAIN"] == "TRUE",
		live:          live,
		syntheticOnly: live && !idmapOverridden,
		now:           time.Now().UnixMilli(),
	}
}
