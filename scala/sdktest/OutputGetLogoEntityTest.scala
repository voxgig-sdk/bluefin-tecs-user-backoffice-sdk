// Generated basic-flow test for the output_get_logo entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped OutputGetLogoTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsuserbackofficesdk.core.{Helpers, BluefinTecsUserBackofficeSDK}
import voxgig.bluefintecsuserbackofficesdk.utility.struct.Struct

object OutputGetLogoEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("output_get_logo.instance") {
      val testsdk = BluefinTecsUserBackofficeSDK.testSDK()
      val ent = testsdk.outputGetLogo(null)
      rep.check("output_get_logo.instance", ent != null, "expected non-null output_get_logo entity")
    }

    rep.scope("output_get_logo.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/output_get_logo/OutputGetLogoTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsUserBackofficeSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("output_get_logo01", "OUTPUT_GET_LOGO01")
      idmap.put("output_get_logo02", "OUTPUT_GET_LOGO02")
      idmap.put("output_get_logo03", "OUTPUT_GET_LOGO03")
      val now = System.currentTimeMillis()

      // LOAD
      val outputGetLogoRef01Ent = client.outputGetLogo(null)
      val outputGetLogoRef01MatchDt0 = new LinkedHashMap[String, Object]()
      val outputGetLogoRef01DataDt0Loaded = outputGetLogoRef01Ent.load(outputGetLogoRef01MatchDt0, null)
      rep.check("output_get_logo.load.nonnull", outputGetLogoRef01DataDt0Loaded != null, "expected load result to be non-null")
    }
  }
}
