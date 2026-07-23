// Generated basic-flow test for the output_register_user entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped OutputRegisterUserTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsuserbackofficesdk.core.{Helpers, BluefinTecsUserBackofficeSDK}
import voxgig.bluefintecsuserbackofficesdk.utility.struct.Struct

object OutputRegisterUserEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("output_register_user.instance") {
      val testsdk = BluefinTecsUserBackofficeSDK.testSDK()
      val ent = testsdk.outputRegisterUser(null)
      rep.check("output_register_user.instance", ent != null, "expected non-null output_register_user entity")
    }

    rep.scope("output_register_user.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/output_register_user/OutputRegisterUserTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsUserBackofficeSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("output_register_user01", "OUTPUT_REGISTER_USER01")
      idmap.put("output_register_user02", "OUTPUT_REGISTER_USER02")
      idmap.put("output_register_user03", "OUTPUT_REGISTER_USER03")
      val now = System.currentTimeMillis()

      // CREATE
      val outputRegisterUserRef01Ent = client.outputRegisterUser(null)
      var outputRegisterUserRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.output_register_user"), "output_register_user_ref01"))
      val outputRegisterUserRef01DataResult = outputRegisterUserRef01Ent.create(outputRegisterUserRef01Data, null)
      outputRegisterUserRef01Data = Helpers.toMapAny(outputRegisterUserRef01DataResult)
      rep.check("output_register_user.create.map", outputRegisterUserRef01Data != null, "expected create result to be a map")
    }
  }
}
