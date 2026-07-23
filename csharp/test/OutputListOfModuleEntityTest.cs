// output_list_of_module entity test - basic flow (generated from the API model).

using System.Text.Json;

using Voxgig.Struct;
using Xunit;

namespace BluefinTecsUserBackofficeSdk.Test;

public class OutputListOfModuleEntityTest
{
    [Fact]
    public void Instance()
    {
        var testsdk = BluefinTecsUserBackofficeSDK.TestSDK(null, null);
        var ent = testsdk.OutputListOfModule();
        Assert.NotNull(ent);
    }

    [Fact]
    public void Basic()
    {
        var setup = OutputListOfModuleBasicSetup(null);
        // Per-op sdk-test-control.json skip - basic test exercises a flow
        // with multiple ops; skipping any op skips the whole flow.
        var _mode = setup.Live ? "live" : "unit";
        foreach (var _op in new[] { "create" })
        {
            var (_shouldSkip, _) = TestRunner.IsControlSkipped(
                "entityOp", "output_list_of_module." + _op, _mode);
            if (_shouldSkip)
            {
                return; // skipped via sdk-test-control.json
            }
        }
        // The basic flow consumes synthetic IDs from the fixture. In live
        // mode without an *_ENTID env override, those IDs hit the live API
        // and 4xx; set BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_LIST_OF_MODULE_ENTID JSON to run live.
        if (setup.SyntheticOnly)
        {
            return;
        }
        var client = setup.Client;

        // CREATE
        var outputListOfModuleRef01Ent = client.OutputListOfModule();
        var outputListOfModuleRef01Data = Helpers.ToMapAny(StructUtils.GetProp(
            StructUtils.GetPath(setup.Data, StructUtils.Jt("new", "output_list_of_module")),
            "output_list_of_module_ref01"));

        var outputListOfModuleRef01DataResult = outputListOfModuleRef01Ent.Create(outputListOfModuleRef01Data, null);
        outputListOfModuleRef01Data = Helpers.ToMapAny(outputListOfModuleRef01DataResult);
        Assert.True(outputListOfModuleRef01Data != null, "expected create result to be a map");

    }

    private static EntityTestSetup OutputListOfModuleBasicSetup(
        Dictionary<string, object?>? extra)
    {
        TestRunner.LoadEnvLocal();

        var entityDataFile = Path.Combine(TestRunner.TestDir(),
            "..", "..", ".sdk", "test", "entity", "output_list_of_module",
            "OutputListOfModuleTestData.json");

        var entityDataEl = JsonSerializer.Deserialize<JsonElement>(
            File.ReadAllText(entityDataFile));
        var entityData = StructRunner.ConvertElement(entityDataEl)
            as Dictionary<string, object?>
            ?? throw new InvalidOperationException(
                "failed to parse output_list_of_module test data");

        var options = new Dictionary<string, object?>
        {
            ["entity"] = entityData["existing"],
        };

        var client = BluefinTecsUserBackofficeSDK.TestSDK(options, extra);

        // Generate idmap via transform, matching the TS pattern.
        var idmap = StructUtils.Transform(
            new List<object?> { "output_list_of_module01", "output_list_of_module02", "output_list_of_module03" },
            new Dictionary<string, object?>
            {
                ["`$PACK`"] = new List<object?>
                {
                    "",
                    new Dictionary<string, object?>
                    {
                        ["`$KEY`"] = "`$COPY`",
                        ["`$VAL`"] = new List<object?> { "`$FORMAT`", "upper", "`$COPY`" },
                    },
                },
            });

        // Detect ENTID env override before EnvOverride consumes it. When
        // live mode is on without a real override, the basic test runs
        // against synthetic IDs from the fixture and 4xx's.
        var entidEnvRaw = Environment.GetEnvironmentVariable(
            "BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_LIST_OF_MODULE_ENTID") ?? "";
        var idmapOverridden = entidEnvRaw != "" &&
            entidEnvRaw.Trim().StartsWith("{");

        var env = TestRunner.EnvOverride(new Dictionary<string, object?>
        {
            ["BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_LIST_OF_MODULE_ENTID"] = idmap,
            ["BLUEFINTECSUSERBACKOFFICE_TEST_LIVE"] = "FALSE",
            ["BLUEFINTECSUSERBACKOFFICE_TEST_EXPLAIN"] = "FALSE",
            ["BLUEFINTECSUSERBACKOFFICE_APIKEY"] = "NONE",
        });

        var idmapResolved = Helpers.ToMapAny(env["BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_LIST_OF_MODULE_ENTID"])
            ?? Helpers.ToMapAny(idmap)
            ?? new Dictionary<string, object?>();

        if (Equals(env["BLUEFINTECSUSERBACKOFFICE_TEST_LIVE"], "TRUE"))
        {
            var mergedOpts = StructUtils.Merge(new List<object?>
            {
                new Dictionary<string, object?>
                {
                    ["apikey"] = env["BLUEFINTECSUSERBACKOFFICE_APIKEY"],
                },
                extra,
            });
            client = new BluefinTecsUserBackofficeSDK(Helpers.ToMapAny(mergedOpts));
        }

        var live = Equals(env["BLUEFINTECSUSERBACKOFFICE_TEST_LIVE"], "TRUE");
        return new EntityTestSetup
        {
            Client = client,
            Data = entityData,
            Idmap = idmapResolved,
            Env = env,
            Explain = Equals(env["BLUEFINTECSUSERBACKOFFICE_TEST_EXPLAIN"], "TRUE"),
            Live = live,
            SyntheticOnly = live && !idmapOverridden,
            Now = DateTimeOffset.UtcNow.ToUnixTimeMilliseconds(),
        };
    }
}
