// Generated basic-flow test for the output_change_logo entity (model-driven,
// unit mode; mirrors the rust/go TestEntity generator).

#include "runner_support.hpp"

using namespace sdk;
using namespace sdk::rs;

struct OutputChangeLogoSetup {
  std::shared_ptr<BluefinTecsUserBackofficeSDK> client;
  Value data;
  Value idmap;
  Value env;
  bool live = false;
  bool synthetic_only = false;
  long long now = 0;
};

static OutputChangeLogoSetup output_change_logo_basic_setup(const Value& extra) {
  load_env_local();

  std::string entity_data_file = "../.sdk/test/entity/output_change_logo/OutputChangeLogoTestData.json";
  Value entity_data = vs::parse_json(read_file(entity_data_file));

  Value options = vmap({{"entity", getp(entity_data, "existing")}});
  auto client = BluefinTecsUserBackofficeSDK::testSDK(options, extra);

  // idmap via transform (upper-cased id name synthetics), matching the donors.
  Value idmap = Struct::transform(
      vlist({Value("output_change_logo01"), Value("output_change_logo02"), Value("output_change_logo03")}),
      vmap({{"`$PACK`", vlist({
        Value(""),
        vmap({
          {"`$KEY`", Value("`$COPY`")},
          {"`$VAL`", vlist({Value("`$FORMAT`"), Value("upper"), Value("`$COPY`")})}
        })
      })}}));
  if (!idmap.is_map()) idmap = vmap();

  Value env = env_override(vmap({
    {"BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_CHANGE_LOGO_ENTID", idmap},
    {"BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE", Value("FALSE")},
    {"BLUEFIN_TECS_USER_BACKOFFICE_TEST_EXPLAIN", Value("FALSE")}
  }));

  Value idmap_resolved = Helpers::toMapAny(getp(env, "BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_CHANGE_LOGO_ENTID"));
  if (!idmap_resolved.is_map()) idmap_resolved = idmap;

  bool live = getp(env, "BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE") == Value("TRUE");

  OutputChangeLogoSetup s;
  s.client = client;
  s.data = entity_data;
  s.idmap = idmap_resolved;
  s.env = env;
  s.live = live;
  s.synthetic_only = false;
  s.now = now_ms();
  return s;
}

static void output_change_logo_entity_instance() {
  auto testsdk = BluefinTecsUserBackofficeSDK::testSDK();
  auto ent = testsdk->output_change_logo();
  ASSERT_EQ(ent->getName(), std::string("output_change_logo"), "entity name");
}


static void output_change_logo_entity_basic() {
  auto setup = output_change_logo_basic_setup(Value::undef());
  std::string mode = setup.live ? "live" : "unit";
  for (const std::string& op : std::vector<std::string>{"create"}) {
    auto sk = is_control_skipped("entityOp", std::string("output_change_logo.") + op, mode);
    if (sk.first) { std::cerr << "skip: " << (sk.second.empty()? "sdk-test-control.json" : sk.second) << "\n"; return; }
  }
  auto client = setup.client;
  // CREATE
  auto output_change_logo_ref01_ent = client->output_change_logo();
  Value output_change_logo_ref01_data = Helpers::toMapAny(getp(Struct::getpath(setup.data, {"new", "output_change_logo"}), "output_change_logo_ref01"));
  if (!output_change_logo_ref01_data.is_map()) output_change_logo_ref01_data = vmap();
  {
    Value output_change_logo_ref01_data_result = output_change_logo_ref01_ent->create(Struct::clone(output_change_logo_ref01_data), Value::undef())->data();
    output_change_logo_ref01_data = Helpers::toMapAny(output_change_logo_ref01_data_result);
    if (!output_change_logo_ref01_data.is_map()) output_change_logo_ref01_data = vmap();
    ASSERT_TRUE(output_change_logo_ref01_data.is_map(), "expected create result to be a map");
  }

}

int main() {
  T_RUN(output_change_logo_entity_instance);
  T_RUN(output_change_logo_entity_basic);
  return sdktest::summary("output_change_logo_entity_test");
}
