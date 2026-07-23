// Generated basic-flow test for the output_resend_link entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped OutputResendLinkTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsuserbackofficesdk.core.{Helpers, BluefinTecsUserBackofficeSDK}
import voxgig.bluefintecsuserbackofficesdk.utility.struct.Struct

object OutputResendLinkEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("output_resend_link.instance") {
      val testsdk = BluefinTecsUserBackofficeSDK.testSDK()
      val ent = testsdk.outputResendLink(null)
      rep.check("output_resend_link.instance", ent != null, "expected non-null output_resend_link entity")
    }

    rep.scope("output_resend_link.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/output_resend_link/OutputResendLinkTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsUserBackofficeSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("output_resend_link01", "OUTPUT_RESEND_LINK01")
      idmap.put("output_resend_link02", "OUTPUT_RESEND_LINK02")
      idmap.put("output_resend_link03", "OUTPUT_RESEND_LINK03")
      val now = System.currentTimeMillis()

      // CREATE
      val outputResendLinkRef01Ent = client.outputResendLink(null)
      var outputResendLinkRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.output_resend_link"), "output_resend_link_ref01"))
      val outputResendLinkRef01DataResult = outputResendLinkRef01Ent.create(outputResendLinkRef01Data, null)
      outputResendLinkRef01Data = Helpers.toMapAny(outputResendLinkRef01DataResult)
      rep.check("output_resend_link.create.map", outputResendLinkRef01Data != null, "expected create result to be a map")
    }
  }
}
