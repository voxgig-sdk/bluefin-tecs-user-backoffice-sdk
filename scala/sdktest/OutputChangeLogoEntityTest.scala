// Generated basic-flow test for the output_change_logo entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped OutputChangeLogoTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsuserbackofficesdk.core.{Helpers, BluefinTecsUserBackofficeSDK}
import voxgig.bluefintecsuserbackofficesdk.utility.struct.Struct

object OutputChangeLogoEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("output_change_logo.instance") {
      val testsdk = BluefinTecsUserBackofficeSDK.testSDK()
      val ent = testsdk.outputChangeLogo(null)
      rep.check("output_change_logo.instance", ent != null, "expected non-null output_change_logo entity")
    }

    rep.scope("output_change_logo.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/output_change_logo/OutputChangeLogoTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsUserBackofficeSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("output_change_logo01", "OUTPUT_CHANGE_LOGO01")
      idmap.put("output_change_logo02", "OUTPUT_CHANGE_LOGO02")
      idmap.put("output_change_logo03", "OUTPUT_CHANGE_LOGO03")
      val now = System.currentTimeMillis()

      // CREATE
      val outputChangeLogoRef01Ent = client.outputChangeLogo(null)
      var outputChangeLogoRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.output_change_logo"), "output_change_logo_ref01"))
      val outputChangeLogoRef01DataResult = outputChangeLogoRef01Ent.create(outputChangeLogoRef01Data, null)
      outputChangeLogoRef01Data = Helpers.toMapAny(outputChangeLogoRef01DataResult)
      rep.check("output_change_logo.create.map", outputChangeLogoRef01Data != null, "expected create result to be a map")
    }
  }
}
