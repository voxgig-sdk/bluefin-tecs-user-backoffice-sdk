// Generated basic-flow test for the output_reset_password entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped OutputResetPasswordTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsuserbackofficesdk.core.{Helpers, BluefinTecsUserBackofficeSDK}
import voxgig.bluefintecsuserbackofficesdk.utility.struct.Struct

object OutputResetPasswordEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("output_reset_password.instance") {
      val testsdk = BluefinTecsUserBackofficeSDK.testSDK()
      val ent = testsdk.outputResetPassword(null)
      rep.check("output_reset_password.instance", ent != null, "expected non-null output_reset_password entity")
    }

    rep.scope("output_reset_password.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/output_reset_password/OutputResetPasswordTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsUserBackofficeSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("output_reset_password01", "OUTPUT_RESET_PASSWORD01")
      idmap.put("output_reset_password02", "OUTPUT_RESET_PASSWORD02")
      idmap.put("output_reset_password03", "OUTPUT_RESET_PASSWORD03")
      val now = System.currentTimeMillis()

      // CREATE
      val outputResetPasswordRef01Ent = client.outputResetPassword(null)
      var outputResetPasswordRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.output_reset_password"), "output_reset_password_ref01"))
      val outputResetPasswordRef01DataResult = outputResetPasswordRef01Ent.create(outputResetPasswordRef01Data, null)
      outputResetPasswordRef01Data = Helpers.toMapAny(outputResetPasswordRef01DataResult)
      rep.check("output_reset_password.create.map", outputResetPasswordRef01Data != null, "expected create result to be a map")
    }
  }
}
