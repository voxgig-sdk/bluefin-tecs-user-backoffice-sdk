// Generated basic-flow test for the output_list_of_mandator entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped OutputListOfMandatorTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsuserbackofficesdk.core.{Helpers, BluefinTecsUserBackofficeSDK}
import voxgig.bluefintecsuserbackofficesdk.utility.struct.Struct

object OutputListOfMandatorEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("output_list_of_mandator.instance") {
      val testsdk = BluefinTecsUserBackofficeSDK.testSDK()
      val ent = testsdk.outputListOfMandator(null)
      rep.check("output_list_of_mandator.instance", ent != null, "expected non-null output_list_of_mandator entity")
    }

    rep.scope("output_list_of_mandator.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/output_list_of_mandator/OutputListOfMandatorTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsUserBackofficeSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("output_list_of_mandator01", "OUTPUT_LIST_OF_MANDATOR01")
      idmap.put("output_list_of_mandator02", "OUTPUT_LIST_OF_MANDATOR02")
      idmap.put("output_list_of_mandator03", "OUTPUT_LIST_OF_MANDATOR03")
      val now = System.currentTimeMillis()

      // CREATE
      val outputListOfMandatorRef01Ent = client.outputListOfMandator(null)
      var outputListOfMandatorRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.output_list_of_mandator"), "output_list_of_mandator_ref01"))
      val outputListOfMandatorRef01DataResult = outputListOfMandatorRef01Ent.create(outputListOfMandatorRef01Data, null)
      outputListOfMandatorRef01Data = Helpers.toMapAny(outputListOfMandatorRef01DataResult)
      rep.check("output_list_of_mandator.create.map", outputListOfMandatorRef01Data != null, "expected create result to be a map")
    }
  }
}
