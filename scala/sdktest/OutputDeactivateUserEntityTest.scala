// Generated basic-flow test for the output_deactivate_user entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped OutputDeactivateUserTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsuserbackofficesdk.core.{Helpers, BluefinTecsUserBackofficeSDK}
import voxgig.bluefintecsuserbackofficesdk.utility.struct.Struct

object OutputDeactivateUserEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("output_deactivate_user.instance") {
      val testsdk = BluefinTecsUserBackofficeSDK.testSDK()
      val ent = testsdk.outputDeactivateUser(null)
      rep.check("output_deactivate_user.instance", ent != null, "expected non-null output_deactivate_user entity")
    }

    rep.scope("output_deactivate_user.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/output_deactivate_user/OutputDeactivateUserTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsUserBackofficeSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("output_deactivate_user01", "OUTPUT_DEACTIVATE_USER01")
      idmap.put("output_deactivate_user02", "OUTPUT_DEACTIVATE_USER02")
      idmap.put("output_deactivate_user03", "OUTPUT_DEACTIVATE_USER03")
      val now = System.currentTimeMillis()

      // CREATE
      val outputDeactivateUserRef01Ent = client.outputDeactivateUser(null)
      var outputDeactivateUserRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.output_deactivate_user"), "output_deactivate_user_ref01"))
      val outputDeactivateUserRef01DataResult = outputDeactivateUserRef01Ent.create(outputDeactivateUserRef01Data, null)
      outputDeactivateUserRef01Data = Helpers.toMapAny(outputDeactivateUserRef01DataResult)
      rep.check("output_deactivate_user.create.map", outputDeactivateUserRef01Data != null, "expected create result to be a map")
    }
  }
}
