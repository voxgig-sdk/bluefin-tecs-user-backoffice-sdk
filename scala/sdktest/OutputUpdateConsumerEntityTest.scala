// Generated basic-flow test for the output_update_consumer entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped OutputUpdateConsumerTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsuserbackofficesdk.core.{Helpers, BluefinTecsUserBackofficeSDK}
import voxgig.bluefintecsuserbackofficesdk.utility.struct.Struct

object OutputUpdateConsumerEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("output_update_consumer.instance") {
      val testsdk = BluefinTecsUserBackofficeSDK.testSDK()
      val ent = testsdk.outputUpdateConsumer(null)
      rep.check("output_update_consumer.instance", ent != null, "expected non-null output_update_consumer entity")
    }

    rep.scope("output_update_consumer.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/output_update_consumer/OutputUpdateConsumerTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsUserBackofficeSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("output_update_consumer01", "OUTPUT_UPDATE_CONSUMER01")
      idmap.put("output_update_consumer02", "OUTPUT_UPDATE_CONSUMER02")
      idmap.put("output_update_consumer03", "OUTPUT_UPDATE_CONSUMER03")
      val now = System.currentTimeMillis()

      // CREATE
      val outputUpdateConsumerRef01Ent = client.outputUpdateConsumer(null)
      var outputUpdateConsumerRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.output_update_consumer"), "output_update_consumer_ref01"))
      val outputUpdateConsumerRef01DataResult = outputUpdateConsumerRef01Ent.create(outputUpdateConsumerRef01Data, null)
      outputUpdateConsumerRef01Data = Helpers.toMapAny(outputUpdateConsumerRef01DataResult)
      rep.check("output_update_consumer.create.map", outputUpdateConsumerRef01Data != null, "expected create result to be a map")
    }
  }
}
