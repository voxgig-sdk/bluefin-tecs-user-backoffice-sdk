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

func TestOutputListOfRoleGroupEntity(t *testing.T) {
	t.Run("instance", func(t *testing.T) {
		testsdk := sdk.TestSDK(nil, nil)
		ent := testsdk.OutputListOfRoleGroup(nil)
		if ent == nil {
			t.Fatal("expected non-nil OutputListOfRoleGroupEntity")
		}
	})

	t.Run("basic", func(t *testing.T) {
		setup := output_list_of_role_groupBasicSetup(nil)
		// Per-op sdk-test-control.json skip — basic test exercises a flow
		// with multiple ops; skipping any op skips the whole flow.
		_mode := "unit"
		if setup.live {
			_mode = "live"
		}
		for _, _op := range []string{"create"} {
			if _shouldSkip, _reason := isControlSkipped("entityOp", "output_list_of_role_group." + _op, _mode); _shouldSkip {
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
			t.Skip("live entity test uses synthetic IDs from fixture — set BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_LIST_OF_ROLE_GROUP_ENTID JSON to run live")
			return
		}
		client := setup.client

		// CREATE
		outputListOfRoleGroupRef01Ent := client.OutputListOfRoleGroup(nil)
		outputListOfRoleGroupRef01Data := core.ToMapAny(vs.GetProp(
			vs.GetPath(setup.data, []any{"new", "output_list_of_role_group"}), "output_list_of_role_group_ref01"))

		outputListOfRoleGroupRef01DataResult, err := outputListOfRoleGroupRef01Ent.Create(outputListOfRoleGroupRef01Data, nil)
		if err != nil {
			t.Fatalf("create failed: %v", err)
		}
		outputListOfRoleGroupRef01Data = core.ToMapAny(entityData(outputListOfRoleGroupRef01DataResult))
		if outputListOfRoleGroupRef01Data == nil {
			t.Fatal("expected create result to be a map")
		}

	})
}

func output_list_of_role_groupBasicSetup(extra map[string]any) *entityTestSetup {
	loadEnvLocal()

	_, filename, _, _ := runtime.Caller(0)
	dir := filepath.Dir(filename)

	entityDataFile := filepath.Join(dir, "..", "..", ".sdk", "test", "entity", "output_list_of_role_group", "OutputListOfRoleGroupTestData.json")

	entityDataSource, err := os.ReadFile(entityDataFile)
	if err != nil {
		panic("failed to read output_list_of_role_group test data: " + err.Error())
	}

	var entityData map[string]any
	if err := json.Unmarshal(entityDataSource, &entityData); err != nil {
		panic("failed to parse output_list_of_role_group test data: " + err.Error())
	}

	options := map[string]any{}
	options["entity"] = entityData["existing"]

	client := sdk.TestSDK(options, extra)

	// Generate idmap via transform, matching TS pattern.
	idmap, _ := vs.Transform(
		[]any{"output_list_of_role_group01", "output_list_of_role_group02", "output_list_of_role_group03"},
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
	entidEnvRaw := os.Getenv("BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_LIST_OF_ROLE_GROUP_ENTID")
	idmapOverridden := entidEnvRaw != "" && strings.HasPrefix(strings.TrimSpace(entidEnvRaw), "{")

	env := envOverride(map[string]any{
		"BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_LIST_OF_ROLE_GROUP_ENTID": idmap,
		"BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE":      "FALSE",
		"BLUEFIN_TECS_USER_BACKOFFICE_TEST_EXPLAIN":   "FALSE",
		"BLUEFIN_TECS_USER_BACKOFFICE_APIKEY":         "",
	})

	idmapResolved := core.ToMapAny(env["BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_LIST_OF_ROLE_GROUP_ENTID"])
	if idmapResolved == nil {
		idmapResolved = core.ToMapAny(idmap)
	}

	if env["BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE"] == "TRUE" {
		// An empty map, not a nil one: Merge returns nil when its last entry
		// is nil, and BasicSetup is normally called with no extras - so a
		// bare nil silently discarded the apikey and server values below.
		extraOpts := extra
		if extraOpts == nil {
			extraOpts = map[string]any{}
		}

		mergedOpts := vs.Merge([]any{
			// liveClientOptions() FIRST, so the generated fields below win:
			// sdk-test-control.json's test.client.options adds to the live
			// client, it does not redirect it.
			liveClientOptions(),
			map[string]any{
				"apikey": env["BLUEFIN_TECS_USER_BACKOFFICE_APIKEY"],
			},
			extraOpts,
		})
		client = sdk.NewBluefinTecsUserBackofficeSDK(core.ToMapAny(mergedOpts))
	}

	live := env["BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE"] == "TRUE"
	return &entityTestSetup{
		client:        client,
		data:          entityData,
		idmap:         idmapResolved,
		env:           env,
		explain:       env["BLUEFIN_TECS_USER_BACKOFFICE_TEST_EXPLAIN"] == "TRUE",
		live:          live,
		syntheticOnly: live && !idmapOverridden,
		now:           time.Now().UnixMilli(),
	}
}
