// Generated basic-flow test for the output_list_of_user entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped OutputListOfUserTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsuserbackofficesdk.core.{Helpers, BluefinTecsUserBackofficeSDK}
import voxgig.bluefintecsuserbackofficesdk.utility.struct.Struct

object OutputListOfUserEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("output_list_of_user.instance") {
      val testsdk = BluefinTecsUserBackofficeSDK.testSDK()
      val ent = testsdk.outputListOfUser(null)
      rep.check("output_list_of_user.instance", ent != null, "expected non-null output_list_of_user entity")
    }

    rep.scope("output_list_of_user.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/output_list_of_user/OutputListOfUserTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsUserBackofficeSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("output_list_of_user01", "OUTPUT_LIST_OF_USER01")
      idmap.put("output_list_of_user02", "OUTPUT_LIST_OF_USER02")
      idmap.put("output_list_of_user03", "OUTPUT_LIST_OF_USER03")
      val now = System.currentTimeMillis()

      // CREATE
      val outputListOfUserRef01Ent = client.outputListOfUser(null)
      var outputListOfUserRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.output_list_of_user"), "output_list_of_user_ref01"))
      val outputListOfUserRef01DataResult = outputListOfUserRef01Ent.create(outputListOfUserRef01Data, null)
      outputListOfUserRef01Data = Helpers.toMapAny(outputListOfUserRef01DataResult)
      rep.check("output_list_of_user.create.map", outputListOfUserRef01Data != null, "expected create result to be a map")
    }
  }
}
