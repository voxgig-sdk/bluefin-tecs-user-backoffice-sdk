// Generated basic-flow test for the output_activate_user entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped OutputActivateUserTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsuserbackofficesdk.core.{Helpers, BluefinTecsUserBackofficeSDK}
import voxgig.bluefintecsuserbackofficesdk.utility.struct.Struct

object OutputActivateUserEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("output_activate_user.instance") {
      val testsdk = BluefinTecsUserBackofficeSDK.testSDK()
      val ent = testsdk.outputActivateUser(null)
      rep.check("output_activate_user.instance", ent != null, "expected non-null output_activate_user entity")
    }

    rep.scope("output_activate_user.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/output_activate_user/OutputActivateUserTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsUserBackofficeSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("output_activate_user01", "OUTPUT_ACTIVATE_USER01")
      idmap.put("output_activate_user02", "OUTPUT_ACTIVATE_USER02")
      idmap.put("output_activate_user03", "OUTPUT_ACTIVATE_USER03")
      val now = System.currentTimeMillis()

      // CREATE
      val outputActivateUserRef01Ent = client.outputActivateUser(null)
      var outputActivateUserRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.output_activate_user"), "output_activate_user_ref01"))
      val outputActivateUserRef01DataResult = outputActivateUserRef01Ent.create(outputActivateUserRef01Data, null)
      outputActivateUserRef01Data = Helpers.toMapAny(outputActivateUserRef01DataResult)
      rep.check("output_activate_user.create.map", outputActivateUserRef01Data != null, "expected create result to be a map")
    }
  }
}
