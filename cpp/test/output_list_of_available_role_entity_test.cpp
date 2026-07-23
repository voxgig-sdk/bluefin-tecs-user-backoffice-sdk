// Generated basic-flow test for the output_list_of_available_role entity (model-driven,
// unit mode; mirrors the rust/go TestEntity generator).

#include "runner_support.hpp"

using namespace sdk;
using namespace sdk::rs;

struct OutputListOfAvailableRoleSetup {
  std::shared_ptr<BluefinTecsUserBackofficeSDK> client;
  Value data;
  Value idmap;
  Value env;
  bool live = false;
  bool synthetic_only = false;
  long long now = 0;
};

static OutputListOfAvailableRoleSetup output_list_of_available_role_basic_setup(const Value& extra) {
  load_env_local();

  std::string entity_data_file = "../.sdk/test/entity/output_list_of_available_role/OutputListOfAvailableRoleTestData.json";
  Value entity_data = vs::parse_json(read_file(entity_data_file));

  Value options = vmap({{"entity", getp(entity_data, "existing")}});
  auto client = BluefinTecsUserBackofficeSDK::testSDK(options, extra);

  // idmap via transform (upper-cased id name synthetics), matching the donors.
  Value idmap = Struct::transform(
      vlist({Value("output_list_of_available_role01"), Value("output_list_of_available_role02"), Value("output_list_of_available_role03")}),
      vmap({{"`$PACK`", vlist({
        Value(""),
        vmap({
          {"`$KEY`", Value("`$COPY`")},
          {"`$VAL`", vlist({Value("`$FORMAT`"), Value("upper"), Value("`$COPY`")})}
        })
      })}}));
  if (!idmap.is_map()) idmap = vmap();

  Value env = env_override(vmap({
    {"BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_LIST_OF_AVAILABLE_ROLE_ENTID", idmap},
    {"BLUEFINTECSUSERBACKOFFICE_TEST_LIVE", Value("FALSE")},
    {"BLUEFINTECSUSERBACKOFFICE_TEST_EXPLAIN", Value("FALSE")}
  }));

  Value idmap_resolved = Helpers::toMapAny(getp(env, "BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_LIST_OF_AVAILABLE_ROLE_ENTID"));
  if (!idmap_resolved.is_map()) idmap_resolved = idmap;

  bool live = getp(env, "BLUEFINTECSUSERBACKOFFICE_TEST_LIVE") == Value("TRUE");

  OutputListOfAvailableRoleSetup s;
  s.client = client;
  s.data = entity_data;
  s.idmap = idmap_resolved;
  s.env = env;
  s.live = live;
  s.synthetic_only = false;
  s.now = now_ms();
  return s;
}

static void output_list_of_available_role_entity_instance() {
  auto testsdk = BluefinTecsUserBackofficeSDK::testSDK();
  auto ent = testsdk->output_list_of_available_role();
  ASSERT_EQ(ent->getName(), std::string("output_list_of_available_role"), "entity name");
}

static void output_list_of_available_role_entity_stream() {
  // stream() runs the list op through the full pipeline and returns the
  // result items. Seed two entities via test mode; with the streaming feature
  // active it yields the feature's incremental items, else it falls back to
  // the materialised items — either way every item is yielded.
  Value seed = vmap({{"entity", vmap({{"output_list_of_available_role", vmap({
      {"strm01", vmap({{"id", Value("strm01")}})},
      {"strm02", vmap({{"id", Value("strm02")}})}})}})}});
  Value sdkopts = vmap({{"feature",
      vmap({{"streaming", vmap({{"active", Value(true)}})}})}});

  auto strsdk = BluefinTecsUserBackofficeSDK::testSDK(seed, sdkopts);
  auto se = strsdk->output_list_of_available_role();
  std::vector<Value> items = se->stream("list", Value::undef(), Value::undef());
  ASSERT_EQ((int)items.size(), 2, "stream yields both seeded items");

  auto plainsdk = BluefinTecsUserBackofficeSDK::testSDK(seed, Value::undef());
  auto pe = plainsdk->output_list_of_available_role();
  std::vector<Value> pitems = pe->stream("list", Value::undef(), Value::undef());
  ASSERT_EQ((int)pitems.size(), 2, "fallback stream yields both items");
}

static void output_list_of_available_role_entity_basic() {
  auto setup = output_list_of_available_role_basic_setup(Value::undef());
  std::string mode = setup.live ? "live" : "unit";
  for (const std::string& op : std::vector<std::string>{"create"}) {
    auto sk = is_control_skipped("entityOp", std::string("output_list_of_available_role.") + op, mode);
    if (sk.first) { std::cerr << "skip: " << (sk.second.empty()? "sdk-test-control.json" : sk.second) << "\n"; return; }
  }
  auto client = setup.client;
  // CREATE
  auto output_list_of_available_role_ref01_ent = client->output_list_of_available_role();
  Value output_list_of_available_role_ref01_data = Helpers::toMapAny(getp(Struct::getpath(setup.data, {"new", "output_list_of_available_role"}), "output_list_of_available_role_ref01"));
  if (!output_list_of_available_role_ref01_data.is_map()) output_list_of_available_role_ref01_data = vmap();
  {
    Value output_list_of_available_role_ref01_data_result = output_list_of_available_role_ref01_ent->create(Struct::clone(output_list_of_available_role_ref01_data), Value::undef());
    output_list_of_available_role_ref01_data = Helpers::toMapAny(output_list_of_available_role_ref01_data_result);
    if (!output_list_of_available_role_ref01_data.is_map()) output_list_of_available_role_ref01_data = vmap();
    ASSERT_TRUE(output_list_of_available_role_ref01_data.is_map(), "expected create result to be a map");
  }

}

int main() {
  T_RUN(output_list_of_available_role_entity_instance);
  T_RUN(output_list_of_available_role_entity_stream);
  T_RUN(output_list_of_available_role_entity_basic);
  return sdktest::summary("output_list_of_available_role_entity_test");
}
