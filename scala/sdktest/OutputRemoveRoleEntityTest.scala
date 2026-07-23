// Generated basic-flow test for the output_remove_role entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped OutputRemoveRoleTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsuserbackofficesdk.core.{Helpers, BluefinTecsUserBackofficeSDK}
import voxgig.bluefintecsuserbackofficesdk.utility.struct.Struct

object OutputRemoveRoleEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("output_remove_role.instance") {
      val testsdk = BluefinTecsUserBackofficeSDK.testSDK()
      val ent = testsdk.outputRemoveRole(null)
      rep.check("output_remove_role.instance", ent != null, "expected non-null output_remove_role entity")
    }

    rep.scope("output_remove_role.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/output_remove_role/OutputRemoveRoleTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsUserBackofficeSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("output_remove_role01", "OUTPUT_REMOVE_ROLE01")
      idmap.put("output_remove_role02", "OUTPUT_REMOVE_ROLE02")
      idmap.put("output_remove_role03", "OUTPUT_REMOVE_ROLE03")
      val now = System.currentTimeMillis()

      // CREATE
      val outputRemoveRoleRef01Ent = client.outputRemoveRole(null)
      var outputRemoveRoleRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.output_remove_role"), "output_remove_role_ref01"))
      val outputRemoveRoleRef01DataResult = outputRemoveRoleRef01Ent.create(outputRemoveRoleRef01Data, null)
      outputRemoveRoleRef01Data = Helpers.toMapAny(outputRemoveRoleRef01DataResult)
      rep.check("output_remove_role.create.map", outputRemoveRoleRef01Data != null, "expected create result to be a map")
    }
  }
}
