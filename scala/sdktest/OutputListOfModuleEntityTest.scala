// Generated basic-flow test for the output_list_of_module entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped OutputListOfModuleTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsuserbackofficesdk.core.{Helpers, BluefinTecsUserBackofficeSDK}
import voxgig.bluefintecsuserbackofficesdk.utility.struct.Struct

object OutputListOfModuleEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("output_list_of_module.instance") {
      val testsdk = BluefinTecsUserBackofficeSDK.testSDK()
      val ent = testsdk.outputListOfModule(null)
      rep.check("output_list_of_module.instance", ent != null, "expected non-null output_list_of_module entity")
    }

    rep.scope("output_list_of_module.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/output_list_of_module/OutputListOfModuleTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsUserBackofficeSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("output_list_of_module01", "OUTPUT_LIST_OF_MODULE01")
      idmap.put("output_list_of_module02", "OUTPUT_LIST_OF_MODULE02")
      idmap.put("output_list_of_module03", "OUTPUT_LIST_OF_MODULE03")
      val now = System.currentTimeMillis()

      // CREATE
      val outputListOfModuleRef01Ent = client.outputListOfModule(null)
      var outputListOfModuleRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.output_list_of_module"), "output_list_of_module_ref01"))
      val outputListOfModuleRef01DataResult = outputListOfModuleRef01Ent.create(outputListOfModuleRef01Data, null)
      outputListOfModuleRef01Data = Helpers.toMapAny(outputListOfModuleRef01DataResult)
      rep.check("output_list_of_module.create.map", outputListOfModuleRef01Data != null, "expected create result to be a map")
    }
  }
}
