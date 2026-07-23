// Generated basic-flow test for the output_activate_digital_module entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped OutputActivateDigitalModuleTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsuserbackofficesdk.core.{Helpers, BluefinTecsUserBackofficeSDK}
import voxgig.bluefintecsuserbackofficesdk.utility.struct.Struct

object OutputActivateDigitalModuleEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("output_activate_digital_module.instance") {
      val testsdk = BluefinTecsUserBackofficeSDK.testSDK()
      val ent = testsdk.outputActivateDigitalModule(null)
      rep.check("output_activate_digital_module.instance", ent != null, "expected non-null output_activate_digital_module entity")
    }

    rep.scope("output_activate_digital_module.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/output_activate_digital_module/OutputActivateDigitalModuleTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsUserBackofficeSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("output_activate_digital_module01", "OUTPUT_ACTIVATE_DIGITAL_MODULE01")
      idmap.put("output_activate_digital_module02", "OUTPUT_ACTIVATE_DIGITAL_MODULE02")
      idmap.put("output_activate_digital_module03", "OUTPUT_ACTIVATE_DIGITAL_MODULE03")
      val now = System.currentTimeMillis()

      // CREATE
      val outputActivateDigitalModuleRef01Ent = client.outputActivateDigitalModule(null)
      var outputActivateDigitalModuleRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.output_activate_digital_module"), "output_activate_digital_module_ref01"))
      val outputActivateDigitalModuleRef01DataResult = outputActivateDigitalModuleRef01Ent.create(outputActivateDigitalModuleRef01Data, null)
      outputActivateDigitalModuleRef01Data = Helpers.toMapAny(outputActivateDigitalModuleRef01DataResult)
      rep.check("output_activate_digital_module.create.map", outputActivateDigitalModuleRef01Data != null, "expected create result to be a map")
    }
  }
}
