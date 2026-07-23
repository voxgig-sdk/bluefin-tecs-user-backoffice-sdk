// Generated basic-flow test for the output_list_of_transactions_history entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped OutputListOfTransactionsHistoryTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsuserbackofficesdk.core.{Helpers, BluefinTecsUserBackofficeSDK}
import voxgig.bluefintecsuserbackofficesdk.utility.struct.Struct

object OutputListOfTransactionsHistoryEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("output_list_of_transactions_history.instance") {
      val testsdk = BluefinTecsUserBackofficeSDK.testSDK()
      val ent = testsdk.outputListOfTransactionsHistory(null)
      rep.check("output_list_of_transactions_history.instance", ent != null, "expected non-null output_list_of_transactions_history entity")
    }

    rep.scope("output_list_of_transactions_history.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/output_list_of_transactions_history/OutputListOfTransactionsHistoryTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsUserBackofficeSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("output_list_of_transactions_history01", "OUTPUT_LIST_OF_TRANSACTIONS_HISTORY01")
      idmap.put("output_list_of_transactions_history02", "OUTPUT_LIST_OF_TRANSACTIONS_HISTORY02")
      idmap.put("output_list_of_transactions_history03", "OUTPUT_LIST_OF_TRANSACTIONS_HISTORY03")
      val now = System.currentTimeMillis()

      // CREATE
      val outputListOfTransactionsHistoryRef01Ent = client.outputListOfTransactionsHistory(null)
      var outputListOfTransactionsHistoryRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.output_list_of_transactions_history"), "output_list_of_transactions_history_ref01"))
      val outputListOfTransactionsHistoryRef01DataResult = outputListOfTransactionsHistoryRef01Ent.create(outputListOfTransactionsHistoryRef01Data, null)
      outputListOfTransactionsHistoryRef01Data = Helpers.toMapAny(outputListOfTransactionsHistoryRef01DataResult)
      rep.check("output_list_of_transactions_history.create.map", outputListOfTransactionsHistoryRef01Data != null, "expected create result to be a map")
    }
  }
}
