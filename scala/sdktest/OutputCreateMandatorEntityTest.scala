// Generated basic-flow test for the output_create_mandator entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped OutputCreateMandatorTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsuserbackofficesdk.core.{Helpers, BluefinTecsUserBackofficeSDK}
import voxgig.bluefintecsuserbackofficesdk.utility.struct.Struct

object OutputCreateMandatorEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("output_create_mandator.instance") {
      val testsdk = BluefinTecsUserBackofficeSDK.testSDK()
      val ent = testsdk.outputCreateMandator(null)
      rep.check("output_create_mandator.instance", ent != null, "expected non-null output_create_mandator entity")
    }

    rep.scope("output_create_mandator.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/output_create_mandator/OutputCreateMandatorTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsUserBackofficeSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("output_create_mandator01", "OUTPUT_CREATE_MANDATOR01")
      idmap.put("output_create_mandator02", "OUTPUT_CREATE_MANDATOR02")
      idmap.put("output_create_mandator03", "OUTPUT_CREATE_MANDATOR03")
      val now = System.currentTimeMillis()

      // CREATE
      val outputCreateMandatorRef01Ent = client.outputCreateMandator(null)
      var outputCreateMandatorRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.output_create_mandator"), "output_create_mandator_ref01"))
      val outputCreateMandatorRef01DataResult = outputCreateMandatorRef01Ent.create(outputCreateMandatorRef01Data, null)
      outputCreateMandatorRef01Data = Helpers.toMapAny(outputCreateMandatorRef01DataResult)
      rep.check("output_create_mandator.create.map", outputCreateMandatorRef01Data != null, "expected create result to be a map")
    }
  }
}
