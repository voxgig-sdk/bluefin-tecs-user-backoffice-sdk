// Generated basic-flow test for the output_activate_store_module entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped OutputActivateStoreModuleTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsuserbackofficesdk.core.{Helpers, BluefinTecsUserBackofficeSDK}
import voxgig.bluefintecsuserbackofficesdk.utility.struct.Struct

object OutputActivateStoreModuleEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("output_activate_store_module.instance") {
      val testsdk = BluefinTecsUserBackofficeSDK.testSDK()
      val ent = testsdk.outputActivateStoreModule(null)
      rep.check("output_activate_store_module.instance", ent != null, "expected non-null output_activate_store_module entity")
    }

    rep.scope("output_activate_store_module.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/output_activate_store_module/OutputActivateStoreModuleTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsUserBackofficeSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("output_activate_store_module01", "OUTPUT_ACTIVATE_STORE_MODULE01")
      idmap.put("output_activate_store_module02", "OUTPUT_ACTIVATE_STORE_MODULE02")
      idmap.put("output_activate_store_module03", "OUTPUT_ACTIVATE_STORE_MODULE03")
      val now = System.currentTimeMillis()

      // CREATE
      val outputActivateStoreModuleRef01Ent = client.outputActivateStoreModule(null)
      var outputActivateStoreModuleRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.output_activate_store_module"), "output_activate_store_module_ref01"))
      val outputActivateStoreModuleRef01DataResult = outputActivateStoreModuleRef01Ent.create(outputActivateStoreModuleRef01Data, null)
      outputActivateStoreModuleRef01Data = Helpers.toMapAny(outputActivateStoreModuleRef01DataResult)
      rep.check("output_activate_store_module.create.map", outputActivateStoreModuleRef01Data != null, "expected create result to be a map")
    }
  }
}
