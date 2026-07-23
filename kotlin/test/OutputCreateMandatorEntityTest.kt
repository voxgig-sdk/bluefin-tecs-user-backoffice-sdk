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
class OutputCreateMandatorEntityTest {

  @Test
  fun instance() {
    val testsdk = BluefinTecsUserBackofficeSDK.testSDK()
    val ent = testsdk.outputCreateMandator(null)
    assertNotNull(ent, "expected non-null output_create_mandator entity")
  }

  @Test
  fun basic() {
    val setup = outputCreateMandatorBasicSetup(null)
    // Per-op sdk-test-control.json skip.
    val mode = if (setup.live) "live" else "unit"
    for (op in arrayOf("create")) {
      val reason = RunnerSupport.skipReason("entityOp", "output_create_mandator.$op", mode)
      Assumptions.assumeTrue(
        reason == null,
        if (reason == null || "" == reason) "skipped via sdk-test-control.json" else reason,
      )
    }
    Assumptions.assumeFalse(
      setup.syntheticOnly,
      "live entity test uses synthetic IDs from fixture — set BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_CREATE_MANDATOR_ENTID JSON to run live",
    )
    val client = setup.client

    // CREATE
    val outputCreateMandatorRef01Ent = client.outputCreateMandator(null)
    var outputCreateMandatorRef01Data: MutableMap<String, Any?> = (Helpers.toMapAny(Struct.getprop(
        Struct.getpath(setup.data, "new.output_create_mandator"), "output_create_mandator_ref01")) ?: linkedMapOf())

    val outputCreateMandatorRef01DataResult = outputCreateMandatorRef01Ent.create(outputCreateMandatorRef01Data, null)
    outputCreateMandatorRef01Data = Helpers.toMapAny(outputCreateMandatorRef01DataResult) ?: linkedMapOf()
    assertNotNull(outputCreateMandatorRef01Data, "expected create result to be a map")

  }

  companion object {
    fun outputCreateMandatorBasicSetup(extra: MutableMap<String, Any?>?): RunnerSupport.EntityTestSetup {
      RunnerSupport.loadEnvLocal()

      val entityData: MutableMap<String, Any?>
      try {
        val entityDataSource = Files.readString(Paths.get(
            "..", ".sdk", "test", "entity", "output_create_mandator", "OutputCreateMandatorTestData.json"))
        entityData = Helpers.toMapAny(Json.parse(entityDataSource)) ?: linkedMapOf()
      } catch (e: Exception) {
        throw AssertionError("failed to read output_create_mandator test data: " + e.message, e)
      }

      val options = linkedMapOf<String, Any?>()
      options["entity"] = entityData["existing"]

      var client = BluefinTecsUserBackofficeSDK.testSDK(options, extra)

      // Generate idmap via transform, matching TS pattern.
      val idnames = mutableListOf<Any?>()
      idnames.add("output_create_mandator01")
      idnames.add("output_create_mandator02")
      idnames.add("output_create_mandator03")
      val idmap = Struct.transform(idnames, Json.parse(
          "{\"`\$PACK`\": [\"\", {" +
          "\"`\$KEY`\": \"`\$COPY`\"," +
          "\"`\$VAL`\": [\"`\$FORMAT`\", \"upper\", \"`\$COPY`\"]" +
          "}]}"))

      // Detect ENTID env override before envOverride consumes it.
      val entidEnvRaw = RunnerSupport.getenv("BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_CREATE_MANDATOR_ENTID")
      val idmapOverridden = entidEnvRaw != null && entidEnvRaw.trim().startsWith("{")

      val envm = linkedMapOf<String, Any?>()
      envm["BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_CREATE_MANDATOR_ENTID"] = idmap
      envm["BLUEFINTECSUSERBACKOFFICE_TEST_LIVE"] = "FALSE"
      envm["BLUEFINTECSUSERBACKOFFICE_TEST_EXPLAIN"] = "FALSE"
      envm["BLUEFINTECSUSERBACKOFFICE_APIKEY"] = "NONE"
      val env = RunnerSupport.envOverride(envm)

      var idmapResolved = Helpers.toMapAny(env["BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_CREATE_MANDATOR_ENTID"])
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
