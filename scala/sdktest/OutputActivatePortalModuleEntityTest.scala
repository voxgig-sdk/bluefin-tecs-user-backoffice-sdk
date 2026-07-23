// Generated basic-flow test for the output_activate_portal_module entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped OutputActivatePortalModuleTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsuserbackofficesdk.core.{Helpers, BluefinTecsUserBackofficeSDK}
import voxgig.bluefintecsuserbackofficesdk.utility.struct.Struct

object OutputActivatePortalModuleEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("output_activate_portal_module.instance") {
      val testsdk = BluefinTecsUserBackofficeSDK.testSDK()
      val ent = testsdk.outputActivatePortalModule(null)
      rep.check("output_activate_portal_module.instance", ent != null, "expected non-null output_activate_portal_module entity")
    }

    rep.scope("output_activate_portal_module.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/output_activate_portal_module/OutputActivatePortalModuleTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsUserBackofficeSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("output_activate_portal_module01", "OUTPUT_ACTIVATE_PORTAL_MODULE01")
      idmap.put("output_activate_portal_module02", "OUTPUT_ACTIVATE_PORTAL_MODULE02")
      idmap.put("output_activate_portal_module03", "OUTPUT_ACTIVATE_PORTAL_MODULE03")
      val now = System.currentTimeMillis()

      // CREATE
      val outputActivatePortalModuleRef01Ent = client.outputActivatePortalModule(null)
      var outputActivatePortalModuleRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.output_activate_portal_module"), "output_activate_portal_module_ref01"))
      val outputActivatePortalModuleRef01DataResult = outputActivatePortalModuleRef01Ent.create(outputActivatePortalModuleRef01Data, null)
      outputActivatePortalModuleRef01Data = Helpers.toMapAny(outputActivatePortalModuleRef01DataResult)
      rep.check("output_activate_portal_module.create.map", outputActivatePortalModuleRef01Data != null, "expected create result to be a map")
    }
  }
}
