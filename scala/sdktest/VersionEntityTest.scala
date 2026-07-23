// Generated basic-flow test for the version entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped VersionTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsuserbackofficesdk.core.{Helpers, BluefinTecsUserBackofficeSDK}
import voxgig.bluefintecsuserbackofficesdk.utility.struct.Struct

object VersionEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("version.instance") {
      val testsdk = BluefinTecsUserBackofficeSDK.testSDK()
      val ent = testsdk.version(null)
      rep.check("version.instance", ent != null, "expected non-null version entity")
    }

    rep.scope("version.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/version/VersionTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsUserBackofficeSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("version01", "VERSION01")
      idmap.put("version02", "VERSION02")
      idmap.put("version03", "VERSION03")
      val now = System.currentTimeMillis()

      // LOAD
      val versionRef01Ent = client.version(null)
      val versionRef01MatchDt0 = new LinkedHashMap[String, Object]()
      val versionRef01DataDt0Loaded = versionRef01Ent.load(versionRef01MatchDt0, null)
      rep.check("version.load.nonnull", versionRef01DataDt0Loaded != null, "expected load result to be non-null")
    }
  }
}
