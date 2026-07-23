// Generated basic-flow test for the output_get_kyc_document entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped OutputGetKycDocumentTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsuserbackofficesdk.core.{Helpers, BluefinTecsUserBackofficeSDK}
import voxgig.bluefintecsuserbackofficesdk.utility.struct.Struct

object OutputGetKycDocumentEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("output_get_kyc_document.instance") {
      val testsdk = BluefinTecsUserBackofficeSDK.testSDK()
      val ent = testsdk.outputGetKycDocument(null)
      rep.check("output_get_kyc_document.instance", ent != null, "expected non-null output_get_kyc_document entity")
    }

    rep.scope("output_get_kyc_document.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/output_get_kyc_document/OutputGetKycDocumentTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsUserBackofficeSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("output_get_kyc_document01", "OUTPUT_GET_KYC_DOCUMENT01")
      idmap.put("output_get_kyc_document02", "OUTPUT_GET_KYC_DOCUMENT02")
      idmap.put("output_get_kyc_document03", "OUTPUT_GET_KYC_DOCUMENT03")
      val now = System.currentTimeMillis()

      // CREATE
      val outputGetKycDocumentRef01Ent = client.outputGetKycDocument(null)
      var outputGetKycDocumentRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.output_get_kyc_document"), "output_get_kyc_document_ref01"))
      val outputGetKycDocumentRef01DataResult = outputGetKycDocumentRef01Ent.create(outputGetKycDocumentRef01Data, null)
      outputGetKycDocumentRef01Data = Helpers.toMapAny(outputGetKycDocumentRef01DataResult)
      rep.check("output_get_kyc_document.create.map", outputGetKycDocumentRef01Data != null, "expected create result to be a map")
    }
  }
}
