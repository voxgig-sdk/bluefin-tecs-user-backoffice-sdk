// Generated basic-flow test for the output_list_of_available_role entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped OutputListOfAvailableRoleTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsuserbackofficesdk.core.{Helpers, BluefinTecsUserBackofficeSDK}
import voxgig.bluefintecsuserbackofficesdk.utility.struct.Struct

object OutputListOfAvailableRoleEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("output_list_of_available_role.instance") {
      val testsdk = BluefinTecsUserBackofficeSDK.testSDK()
      val ent = testsdk.outputListOfAvailableRole(null)
      rep.check("output_list_of_available_role.instance", ent != null, "expected non-null output_list_of_available_role entity")
    }

    rep.scope("output_list_of_available_role.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/output_list_of_available_role/OutputListOfAvailableRoleTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsUserBackofficeSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("output_list_of_available_role01", "OUTPUT_LIST_OF_AVAILABLE_ROLE01")
      idmap.put("output_list_of_available_role02", "OUTPUT_LIST_OF_AVAILABLE_ROLE02")
      idmap.put("output_list_of_available_role03", "OUTPUT_LIST_OF_AVAILABLE_ROLE03")
      val now = System.currentTimeMillis()

      // CREATE
      val outputListOfAvailableRoleRef01Ent = client.outputListOfAvailableRole(null)
      var outputListOfAvailableRoleRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.output_list_of_available_role"), "output_list_of_available_role_ref01"))
      val outputListOfAvailableRoleRef01DataResult = outputListOfAvailableRoleRef01Ent.create(outputListOfAvailableRoleRef01Data, null)
      outputListOfAvailableRoleRef01Data = Helpers.toMapAny(outputListOfAvailableRoleRef01DataResult)
      rep.check("output_list_of_available_role.create.map", outputListOfAvailableRoleRef01Data != null, "expected create result to be a map")
    }
  }
}
