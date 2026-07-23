// Generated basic-flow test for the output_provide_credential entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped OutputProvideCredentialTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsuserbackofficesdk.core.{Helpers, BluefinTecsUserBackofficeSDK}
import voxgig.bluefintecsuserbackofficesdk.utility.struct.Struct

object OutputProvideCredentialEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("output_provide_credential.instance") {
      val testsdk = BluefinTecsUserBackofficeSDK.testSDK()
      val ent = testsdk.outputProvideCredential(null)
      rep.check("output_provide_credential.instance", ent != null, "expected non-null output_provide_credential entity")
    }

    rep.scope("output_provide_credential.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/output_provide_credential/OutputProvideCredentialTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsUserBackofficeSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("output_provide_credential01", "OUTPUT_PROVIDE_CREDENTIAL01")
      idmap.put("output_provide_credential02", "OUTPUT_PROVIDE_CREDENTIAL02")
      idmap.put("output_provide_credential03", "OUTPUT_PROVIDE_CREDENTIAL03")
      val now = System.currentTimeMillis()

      // CREATE
      val outputProvideCredentialRef01Ent = client.outputProvideCredential(null)
      var outputProvideCredentialRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.output_provide_credential"), "output_provide_credential_ref01"))
      val outputProvideCredentialRef01DataResult = outputProvideCredentialRef01Ent.create(outputProvideCredentialRef01Data, null)
      outputProvideCredentialRef01Data = Helpers.toMapAny(outputProvideCredentialRef01DataResult)
      rep.check("output_provide_credential.create.map", outputProvideCredentialRef01Data != null, "expected create result to be a map")
    }
  }
}
