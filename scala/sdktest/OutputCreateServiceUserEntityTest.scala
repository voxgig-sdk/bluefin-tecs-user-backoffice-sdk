// Generated basic-flow test for the output_create_service_user entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped OutputCreateServiceUserTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsuserbackofficesdk.core.{Helpers, BluefinTecsUserBackofficeSDK}
import voxgig.bluefintecsuserbackofficesdk.utility.struct.Struct

object OutputCreateServiceUserEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("output_create_service_user.instance") {
      val testsdk = BluefinTecsUserBackofficeSDK.testSDK()
      val ent = testsdk.outputCreateServiceUser(null)
      rep.check("output_create_service_user.instance", ent != null, "expected non-null output_create_service_user entity")
    }

    rep.scope("output_create_service_user.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/output_create_service_user/OutputCreateServiceUserTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsUserBackofficeSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("output_create_service_user01", "OUTPUT_CREATE_SERVICE_USER01")
      idmap.put("output_create_service_user02", "OUTPUT_CREATE_SERVICE_USER02")
      idmap.put("output_create_service_user03", "OUTPUT_CREATE_SERVICE_USER03")
      val now = System.currentTimeMillis()

      // CREATE
      val outputCreateServiceUserRef01Ent = client.outputCreateServiceUser(null)
      var outputCreateServiceUserRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.output_create_service_user"), "output_create_service_user_ref01"))
      val outputCreateServiceUserRef01DataResult = outputCreateServiceUserRef01Ent.create(outputCreateServiceUserRef01Data, null)
      outputCreateServiceUserRef01Data = Helpers.toMapAny(outputCreateServiceUserRef01DataResult)
      rep.check("output_create_service_user.create.map", outputCreateServiceUserRef01Data != null, "expected create result to be a map")
    }
  }
}
