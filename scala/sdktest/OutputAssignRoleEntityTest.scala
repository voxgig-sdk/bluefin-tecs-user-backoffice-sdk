// Generated basic-flow test for the output_assign_role entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped OutputAssignRoleTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsuserbackofficesdk.core.{Helpers, BluefinTecsUserBackofficeSDK}
import voxgig.bluefintecsuserbackofficesdk.utility.struct.Struct

object OutputAssignRoleEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("output_assign_role.instance") {
      val testsdk = BluefinTecsUserBackofficeSDK.testSDK()
      val ent = testsdk.outputAssignRole(null)
      rep.check("output_assign_role.instance", ent != null, "expected non-null output_assign_role entity")
    }

    rep.scope("output_assign_role.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/output_assign_role/OutputAssignRoleTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsUserBackofficeSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("output_assign_role01", "OUTPUT_ASSIGN_ROLE01")
      idmap.put("output_assign_role02", "OUTPUT_ASSIGN_ROLE02")
      idmap.put("output_assign_role03", "OUTPUT_ASSIGN_ROLE03")
      val now = System.currentTimeMillis()

      // CREATE
      val outputAssignRoleRef01Ent = client.outputAssignRole(null)
      var outputAssignRoleRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.output_assign_role"), "output_assign_role_ref01"))
      val outputAssignRoleRef01DataResult = outputAssignRoleRef01Ent.create(outputAssignRoleRef01Data, null)
      outputAssignRoleRef01Data = Helpers.toMapAny(outputAssignRoleRef01DataResult)
      rep.check("output_assign_role.create.map", outputAssignRoleRef01Data != null, "expected create result to be a map")
    }
  }
}
