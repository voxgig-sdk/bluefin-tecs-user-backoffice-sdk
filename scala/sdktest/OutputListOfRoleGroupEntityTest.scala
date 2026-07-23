// Generated basic-flow test for the output_list_of_role_group entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped OutputListOfRoleGroupTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsuserbackofficesdk.core.{Helpers, BluefinTecsUserBackofficeSDK}
import voxgig.bluefintecsuserbackofficesdk.utility.struct.Struct

object OutputListOfRoleGroupEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("output_list_of_role_group.instance") {
      val testsdk = BluefinTecsUserBackofficeSDK.testSDK()
      val ent = testsdk.outputListOfRoleGroup(null)
      rep.check("output_list_of_role_group.instance", ent != null, "expected non-null output_list_of_role_group entity")
    }

    rep.scope("output_list_of_role_group.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/output_list_of_role_group/OutputListOfRoleGroupTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsUserBackofficeSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("output_list_of_role_group01", "OUTPUT_LIST_OF_ROLE_GROUP01")
      idmap.put("output_list_of_role_group02", "OUTPUT_LIST_OF_ROLE_GROUP02")
      idmap.put("output_list_of_role_group03", "OUTPUT_LIST_OF_ROLE_GROUP03")
      val now = System.currentTimeMillis()

      // CREATE
      val outputListOfRoleGroupRef01Ent = client.outputListOfRoleGroup(null)
      var outputListOfRoleGroupRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.output_list_of_role_group"), "output_list_of_role_group_ref01"))
      val outputListOfRoleGroupRef01DataResult = outputListOfRoleGroupRef01Ent.create(outputListOfRoleGroupRef01Data, null)
      outputListOfRoleGroupRef01Data = Helpers.toMapAny(outputListOfRoleGroupRef01DataResult)
      rep.check("output_list_of_role_group.create.map", outputListOfRoleGroupRef01Data != null, "expected create result to be a map")
    }
  }
}
