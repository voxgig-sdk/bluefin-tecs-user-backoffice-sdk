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
class OutputRemoveRoleEntityTest {

  @Test
  fun instance() {
    val testsdk = BluefinTecsUserBackofficeSDK.testSDK()
    val ent = testsdk.outputRemoveRole(null)
    assertNotNull(ent, "expected non-null output_remove_role entity")
  }

  @Test
  fun basic() {
    val setup = outputRemoveRoleBasicSetup(null)
    // Per-op sdk-test-control.json skip.
    val mode = if (setup.live) "live" else "unit"
    for (op in arrayOf("create")) {
      val reason = RunnerSupport.skipReason("entityOp", "output_remove_role.$op", mode)
      Assumptions.assumeTrue(
        reason == null,
        if (reason == null || "" == reason) "skipped via sdk-test-control.json" else reason,
      )
    }
    Assumptions.assumeFalse(
      setup.syntheticOnly,
      "live entity test uses synthetic IDs from fixture — set BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_REMOVE_ROLE_ENTID JSON to run live",
    )
    val client = setup.client

    // CREATE
    val outputRemoveRoleRef01Ent = client.outputRemoveRole(null)
    var outputRemoveRoleRef01Data: MutableMap<String, Any?> = (Helpers.toMapAny(Struct.getprop(
        Struct.getpath(setup.data, "new.output_remove_role"), "output_remove_role_ref01")) ?: linkedMapOf())

    val outputRemoveRoleRef01DataResult = outputRemoveRoleRef01Ent.create(outputRemoveRoleRef01Data, null)
    outputRemoveRoleRef01Data = Helpers.toMapAny(outputRemoveRoleRef01DataResult) ?: linkedMapOf()
    assertNotNull(outputRemoveRoleRef01Data, "expected create result to be a map")

  }

  companion object {
    fun outputRemoveRoleBasicSetup(extra: MutableMap<String, Any?>?): RunnerSupport.EntityTestSetup {
      RunnerSupport.loadEnvLocal()

      val entityData: MutableMap<String, Any?>
      try {
        val entityDataSource = Files.readString(Paths.get(
            "..", ".sdk", "test", "entity", "output_remove_role", "OutputRemoveRoleTestData.json"))
        entityData = Helpers.toMapAny(Json.parse(entityDataSource)) ?: linkedMapOf()
      } catch (e: Exception) {
        throw AssertionError("failed to read output_remove_role test data: " + e.message, e)
      }

      val options = linkedMapOf<String, Any?>()
      options["entity"] = entityData["existing"]

      var client = BluefinTecsUserBackofficeSDK.testSDK(options, extra)

      // Generate idmap via transform, matching TS pattern.
      val idnames = mutableListOf<Any?>()
      idnames.add("output_remove_role01")
      idnames.add("output_remove_role02")
      idnames.add("output_remove_role03")
      val idmap = Struct.transform(idnames, Json.parse(
          "{\"`\$PACK`\": [\"\", {" +
          "\"`\$KEY`\": \"`\$COPY`\"," +
          "\"`\$VAL`\": [\"`\$FORMAT`\", \"upper\", \"`\$COPY`\"]" +
          "}]}"))

      // Detect ENTID env override before envOverride consumes it.
      val entidEnvRaw = RunnerSupport.getenv("BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_REMOVE_ROLE_ENTID")
      val idmapOverridden = entidEnvRaw != null && entidEnvRaw.trim().startsWith("{")

      val envm = linkedMapOf<String, Any?>()
      envm["BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_REMOVE_ROLE_ENTID"] = idmap
      envm["BLUEFINTECSUSERBACKOFFICE_TEST_LIVE"] = "FALSE"
      envm["BLUEFINTECSUSERBACKOFFICE_TEST_EXPLAIN"] = "FALSE"
      envm["BLUEFINTECSUSERBACKOFFICE_APIKEY"] = "NONE"
      val env = RunnerSupport.envOverride(envm)

      var idmapResolved = Helpers.toMapAny(env["BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_REMOVE_ROLE_ENTID"])
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
