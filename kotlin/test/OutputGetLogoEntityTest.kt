package voxgig.bluefintecsuserbackofficesdk.sdktest

import java.nio.file.Files
import java.nio.file.Paths

import org.junit.jupiter.api.Assertions.assertEquals
import org.junit.jupiter.api.Assertions.assertFalse
import org.junit.jupiter.api.Assertions.assertNotNull
import org.junit.jupiter.api.Assertions.assertTrue
import org.junit.jupiter.api.Assumptions
import org.junit.jupiter.api.Test

import voxgig.bluefintecsuserbackofficesdk.core.Helpers
import voxgig.bluefintecsuserbackofficesdk.core.SdkEntity
import voxgig.bluefintecsuserbackofficesdk.core.BluefinTecsUserBackofficeSDK
import voxgig.bluefintecsuserbackofficesdk.utility.Json
import voxgig.bluefintecsuserbackofficesdk.utility.struct.Struct

@Suppress("UNCHECKED_CAST", "UNUSED_VARIABLE", "UNUSED_VALUE")
class OutputGetLogoEntityTest {

  @Test
  fun instance() {
    val testsdk = BluefinTecsUserBackofficeSDK.testSDK()
    val ent = testsdk.outputGetLogo(null)
    assertNotNull(ent, "expected non-null output_get_logo entity")
  }

  @Test
  fun basic() {
    val setup = outputGetLogoBasicSetup(null)
    // Per-op sdk-test-control.json skip.
    val mode = if (setup.live) "live" else "unit"
    for (op in arrayOf("load")) {
      val reason = RunnerSupport.skipReason("entityOp", "output_get_logo.$op", mode)
      Assumptions.assumeTrue(
        reason == null,
        if (reason == null || "" == reason) "skipped via sdk-test-control.json" else reason,
      )
    }
    Assumptions.assumeFalse(
      setup.syntheticOnly,
      "live entity test uses synthetic IDs from fixture — set BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_GET_LOGO_ENTID JSON to run live",
    )
    val client = setup.client

    // Bootstrap entity data from existing test data (no create step in flow).
    val outputGetLogoRef01DataRaw = Struct.items(Helpers.toMapAny(
        Struct.getpath(setup.data, "existing.output_get_logo")))
    val outputGetLogoRef01Data: MutableMap<String, Any?> = if (outputGetLogoRef01DataRaw.isEmpty())
        linkedMapOf() else (Helpers.toMapAny(outputGetLogoRef01DataRaw[0][1]) ?: linkedMapOf())

    // LOAD
    val outputGetLogoRef01Ent = client.outputGetLogo(null)
    val outputGetLogoRef01MatchDt0 = linkedMapOf<String, Any?>()
    val outputGetLogoRef01DataDt0Loaded = outputGetLogoRef01Ent.load(outputGetLogoRef01MatchDt0, null)
    assertNotNull(outputGetLogoRef01DataDt0Loaded, "expected load result to be non-null")

  }

  companion object {
    fun outputGetLogoBasicSetup(extra: MutableMap<String, Any?>?): RunnerSupport.EntityTestSetup {
      RunnerSupport.loadEnvLocal()

      val entityData: MutableMap<String, Any?>
      try {
        val entityDataSource = Files.readString(Paths.get(
            "..", ".sdk", "test", "entity", "output_get_logo", "OutputGetLogoTestData.json"))
        entityData = Helpers.toMapAny(Json.parse(entityDataSource)) ?: linkedMapOf()
      } catch (e: Exception) {
        throw AssertionError("failed to read output_get_logo test data: " + e.message, e)
      }

      val options = linkedMapOf<String, Any?>()
      options["entity"] = entityData["existing"]

      var client = BluefinTecsUserBackofficeSDK.testSDK(options, extra)

      // Generate idmap via transform, matching TS pattern.
      val idnames = mutableListOf<Any?>()
      idnames.add("output_get_logo01")
      idnames.add("output_get_logo02")
      idnames.add("output_get_logo03")
      val idmap = Struct.transform(idnames, Json.parse(
          "{\"`\$PACK`\": [\"\", {" +
          "\"`\$KEY`\": \"`\$COPY`\"," +
          "\"`\$VAL`\": [\"`\$FORMAT`\", \"upper\", \"`\$COPY`\"]" +
          "}]}"))

      // Detect ENTID env override before envOverride consumes it.
      val entidEnvRaw = RunnerSupport.getenv("BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_GET_LOGO_ENTID")
      val idmapOverridden = entidEnvRaw != null && entidEnvRaw.trim().startsWith("{")

      val envm = linkedMapOf<String, Any?>()
      envm["BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_GET_LOGO_ENTID"] = idmap
      envm["BLUEFINTECSUSERBACKOFFICE_TEST_LIVE"] = "FALSE"
      envm["BLUEFINTECSUSERBACKOFFICE_TEST_EXPLAIN"] = "FALSE"
      envm["BLUEFINTECSUSERBACKOFFICE_APIKEY"] = "NONE"
      val env = RunnerSupport.envOverride(envm)

      var idmapResolved = Helpers.toMapAny(env["BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_GET_LOGO_ENTID"])
      if (idmapResolved == null) {
        idmapResolved = Helpers.toMapAny(idmap) ?: linkedMapOf()
      }

      val live = "TRUE" == env["BLUEFINTECSUSERBACKOFFICE_TEST_LIVE"]
      if (live) {
        val liveOpts = linkedMapOf<String, Any?>()
        liveOpts["apikey"] = env["BLUEFINTECSUSERBACKOFFICE_APIKEY"]
        val mergedOpts = Struct.merge(Struct.jt(liveOpts, extra))
        client = BluefinTecsUserBackofficeSDK(Helpers.toMapAny(mergedOpts))
      }

      val setup = RunnerSupport.EntityTestSetup()
      setup.client = client
      setup.data = entityData
      setup.idmap = idmapResolved
      setup.env = env
      setup.explain = "TRUE" == env["BLUEFINTECSUSERBACKOFFICE_TEST_EXPLAIN"]
      setup.live = live
      setup.syntheticOnly = live && !idmapOverridden
      setup.now = System.currentTimeMillis()
      return setup
    }
  }
}
