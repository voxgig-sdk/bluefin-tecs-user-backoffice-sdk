// Generated basic-flow test for the output_update_profile entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped OutputUpdateProfileTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsuserbackofficesdk.core.{Helpers, BluefinTecsUserBackofficeSDK}
import voxgig.bluefintecsuserbackofficesdk.utility.struct.Struct

object OutputUpdateProfileEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("output_update_profile.instance") {
      val testsdk = BluefinTecsUserBackofficeSDK.testSDK()
      val ent = testsdk.outputUpdateProfile(null)
      rep.check("output_update_profile.instance", ent != null, "expected non-null output_update_profile entity")
    }

    rep.scope("output_update_profile.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/output_update_profile/OutputUpdateProfileTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsUserBackofficeSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("output_update_profile01", "OUTPUT_UPDATE_PROFILE01")
      idmap.put("output_update_profile02", "OUTPUT_UPDATE_PROFILE02")
      idmap.put("output_update_profile03", "OUTPUT_UPDATE_PROFILE03")
      val now = System.currentTimeMillis()

      // CREATE
      val outputUpdateProfileRef01Ent = client.outputUpdateProfile(null)
      var outputUpdateProfileRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.output_update_profile"), "output_update_profile_ref01"))
      val outputUpdateProfileRef01DataResult = outputUpdateProfileRef01Ent.create(outputUpdateProfileRef01Data, null)
      outputUpdateProfileRef01Data = Helpers.toMapAny(outputUpdateProfileRef01DataResult)
      rep.check("output_update_profile.create.map", outputUpdateProfileRef01Data != null, "expected create result to be a map")
    }
  }
}
