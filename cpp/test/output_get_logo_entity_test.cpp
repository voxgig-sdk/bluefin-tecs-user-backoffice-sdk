// Generated basic-flow test for the output_get_logo entity (model-driven,
// unit mode; mirrors the rust/go TestEntity generator).

#include "runner_support.hpp"

using namespace sdk;
using namespace sdk::rs;

struct OutputGetLogoSetup {
  std::shared_ptr<BluefinTecsUserBackofficeSDK> client;
  Value data;
  Value idmap;
  Value env;
  bool live = false;
  bool synthetic_only = false;
  long long now = 0;
};

static OutputGetLogoSetup output_get_logo_basic_setup(const Value& extra) {
  load_env_local();

  std::string entity_data_file = "../.sdk/test/entity/output_get_logo/OutputGetLogoTestData.json";
  Value entity_data = vs::parse_json(read_file(entity_data_file));

  Value options = vmap({{"entity", getp(entity_data, "existing")}});
  auto client = BluefinTecsUserBackofficeSDK::testSDK(options, extra);

  // idmap via transform (upper-cased id name synthetics), matching the donors.
  Value idmap = Struct::transform(
      vlist({Value("output_get_logo01"), Value("output_get_logo02"), Value("output_get_logo03")}),
      vmap({{"`$PACK`", vlist({
        Value(""),
        vmap({
          {"`$KEY`", Value("`$COPY`")},
          {"`$VAL`", vlist({Value("`$FORMAT`"), Value("upper"), Value("`$COPY`")})}
        })
      })}}));
  if (!idmap.is_map()) idmap = vmap();

  Value env = env_override(vmap({
    {"BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_GET_LOGO_ENTID", idmap},
    {"BLUEFINTECSUSERBACKOFFICE_TEST_LIVE", Value("FALSE")},
    {"BLUEFINTECSUSERBACKOFFICE_TEST_EXPLAIN", Value("FALSE")}
  }));

  Value idmap_resolved = Helpers::toMapAny(getp(env, "BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_GET_LOGO_ENTID"));
  if (!idmap_resolved.is_map()) idmap_resolved = idmap;

  bool live = getp(env, "BLUEFINTECSUSERBACKOFFICE_TEST_LIVE") == Value("TRUE");

  OutputGetLogoSetup s;
  s.client = client;
  s.data = entity_data;
  s.idmap = idmap_resolved;
  s.env = env;
  s.live = live;
  s.synthetic_only = false;
  s.now = now_ms();
  return s;
}

static void output_get_logo_entity_instance() {
  auto testsdk = BluefinTecsUserBackofficeSDK::testSDK();
  auto ent = testsdk->output_get_logo();
  ASSERT_EQ(ent->getName(), std::string("output_get_logo"), "entity name");
}

static void output_get_logo_entity_stream() {
  // stream() runs the list op through the full pipeline and returns the
  // result items. Seed two entities via test mode; with the streaming feature
  // active it yields the feature's incremental items, else it falls back to
  // the materialised items — either way every item is yielded.
  Value seed = vmap({{"entity", vmap({{"output_get_logo", vmap({
      {"strm01", vmap({{"id", Value("strm01")}})},
      {"strm02", vmap({{"id", Value("strm02")}})}})}})}});
  Value sdkopts = vmap({{"feature",
      vmap({{"streaming", vmap({{"active", Value(true)}})}})}});

  auto strsdk = BluefinTecsUserBackofficeSDK::testSDK(seed, sdkopts);
  auto se = strsdk->output_get_logo();
  std::vector<Value> items = se->stream("list", Value::undef(), Value::undef());
  ASSERT_EQ((int)items.size(), 2, "stream yields both seeded items");

  auto plainsdk = BluefinTecsUserBackofficeSDK::testSDK(seed, Value::undef());
  auto pe = plainsdk->output_get_logo();
  std::vector<Value> pitems = pe->stream("list", Value::undef(), Value::undef());
  ASSERT_EQ((int)pitems.size(), 2, "fallback stream yields both items");
}

static void output_get_logo_entity_basic() {
  auto setup = output_get_logo_basic_setup(Value::undef());
  std::string mode = setup.live ? "live" : "unit";
  for (const std::string& op : std::vector<std::string>{"load"}) {
    auto sk = is_control_skipped("entityOp", std::string("output_get_logo.") + op, mode);
    if (sk.first) { std::cerr << "skip: " << (sk.second.empty()? "sdk-test-control.json" : sk.second) << "\n"; return; }
  }
  auto client = setup.client;

  // Bootstrap entity data from existing test data (no create step in flow).
  // Declare _data at FUNCTION scope (later load/update steps reference it);
  // only _data_raw was declared, so the block-local assignment left _data
  // undeclared ("was not declared in this scope").
  Value output_get_logo_ref01_data_raw = Helpers::toMapAny(Struct::getpath(setup.data, {"existing", "output_get_logo"}));
  Value output_get_logo_ref01_data = vmap();
  {
    std::vector<Value> its = Struct::items(output_get_logo_ref01_data_raw);
    output_get_logo_ref01_data = its.empty() ? vmap() : Helpers::toMapAny(pair_val(its[0]));
    if (!output_get_logo_ref01_data.is_map()) output_get_logo_ref01_data = vmap();
  }
  // LOAD
  auto output_get_logo_ref01_ent = client->output_get_logo();
  Value output_get_logo_ref01_match_dt0 = vmap();
  Value output_get_logo_ref01_data_dt0_loaded = output_get_logo_ref01_ent->load(output_get_logo_ref01_match_dt0, Value::undef());
  ASSERT_TRUE(!output_get_logo_ref01_data_dt0_loaded.is_undef(), "expected load result to be non-nil");

}

int main() {
  T_RUN(output_get_logo_entity_instance);
  T_RUN(output_get_logo_entity_stream);
  T_RUN(output_get_logo_entity_basic);
  return sdktest::summary("output_get_logo_entity_test");
}
