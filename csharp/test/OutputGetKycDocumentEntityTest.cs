// output_get_kyc_document entity test - basic flow (generated from the API model).

using System.Text.Json;

using Voxgig.Struct;
using Xunit;

namespace BluefinTecsUserBackofficeSdk.Test;

public class OutputGetKycDocumentEntityTest
{
    [Fact]
    public void Instance()
    {
        var testsdk = BluefinTecsUserBackofficeSDK.TestSDK(null, null);
        var ent = testsdk.OutputGetKycDocument();
        Assert.NotNull(ent);
    }

    [Fact]
    public void Basic()
    {
        var setup = OutputGetKycDocumentBasicSetup(null);
        // Per-op sdk-test-control.json skip - basic test exercises a flow
        // with multiple ops; skipping any op skips the whole flow.
        var _mode = setup.Live ? "live" : "unit";
        foreach (var _op in new[] { "create" })
        {
            var (_shouldSkip, _) = TestRunner.IsControlSkipped(
                "entityOp", "output_get_kyc_document." + _op, _mode);
            if (_shouldSkip)
            {
                return; // skipped via sdk-test-control.json
            }
        }
        // The basic flow consumes synthetic IDs from the fixture. In live
        // mode without an *_ENTID env override, those IDs hit the live API
        // and 4xx; set BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_GET_KYC_DOCUMENT_ENTID JSON to run live.
        if (setup.SyntheticOnly)
        {
            return;
        }
        var client = setup.Client;

        // CREATE
        var outputGetKycDocumentRef01Ent = client.OutputGetKycDocument();
        var outputGetKycDocumentRef01Data = Helpers.ToMapAny(StructUtils.GetProp(
            StructUtils.GetPath(setup.Data, StructUtils.Jt("new", "output_get_kyc_document")),
            "output_get_kyc_document_ref01"));

        var outputGetKycDocumentRef01DataResult = outputGetKycDocumentRef01Ent.Create(outputGetKycDocumentRef01Data, null);
        outputGetKycDocumentRef01Data = Helpers.ToMapAny(outputGetKycDocumentRef01DataResult);
        Assert.True(outputGetKycDocumentRef01Data != null, "expected create result to be a map");

    }

    private static EntityTestSetup OutputGetKycDocumentBasicSetup(
        Dictionary<string, object?>? extra)
    {
        TestRunner.LoadEnvLocal();

        var entityDataFile = Path.Combine(TestRunner.TestDir(),
            "..", "..", ".sdk", "test", "entity", "output_get_kyc_document",
            "OutputGetKycDocumentTestData.json");

        var entityDataEl = JsonSerializer.Deserialize<JsonElement>(
            File.ReadAllText(entityDataFile));
        var entityData = StructRunner.ConvertElement(entityDataEl)
            as Dictionary<string, object?>
            ?? throw new InvalidOperationException(
                "failed to parse output_get_kyc_document test data");

        var options = new Dictionary<string, object?>
        {
            ["entity"] = entityData["existing"],
        };

        var client = BluefinTecsUserBackofficeSDK.TestSDK(options, extra);

        // Generate idmap via transform, matching the TS pattern.
        var idmap = StructUtils.Transform(
            new List<object?> { "output_get_kyc_document01", "output_get_kyc_document02", "output_get_kyc_document03" },
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
            "BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_GET_KYC_DOCUMENT_ENTID") ?? "";
        var idmapOverridden = entidEnvRaw != "" &&
            entidEnvRaw.Trim().StartsWith("{");

        var env = TestRunner.EnvOverride(new Dictionary<string, object?>
        {
            ["BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_GET_KYC_DOCUMENT_ENTID"] = idmap,
            ["BLUEFINTECSUSERBACKOFFICE_TEST_LIVE"] = "FALSE",
            ["BLUEFINTECSUSERBACKOFFICE_TEST_EXPLAIN"] = "FALSE",
            ["BLUEFINTECSUSERBACKOFFICE_APIKEY"] = "NONE",
        });

        var idmapResolved = Helpers.ToMapAny(env["BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_GET_KYC_DOCUMENT_ENTID"])
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
