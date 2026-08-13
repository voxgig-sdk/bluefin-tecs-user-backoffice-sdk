// Generated basic-flow test for the output_activate_portal_module entity (model-driven,
// unit mode; mirrors the rust/go TestEntity generator).

#include "runner_support.hpp"

using namespace sdk;
using namespace sdk::rs;

struct OutputActivatePortalModuleSetup {
  std::shared_ptr<BluefinTecsUserBackofficeSDK> client;
  Value data;
  Value idmap;
  Value env;
  bool live = false;
  bool synthetic_only = false;
  long long now = 0;
};

static OutputActivatePortalModuleSetup output_activate_portal_module_basic_setup(const Value& extra) {
  load_env_local();

  std::string entity_data_file = "../.sdk/test/entity/output_activate_portal_module/OutputActivatePortalModuleTestData.json";
  Value entity_data = vs::parse_json(read_file(entity_data_file));

  Value options = vmap({{"entity", getp(entity_data, "existing")}});
  auto client = BluefinTecsUserBackofficeSDK::testSDK(options, extra);

  // idmap via transform (upper-cased id name synthetics), matching the donors.
  Value idmap = Struct::transform(
      vlist({Value("output_activate_portal_module01"), Value("output_activate_portal_module02"), Value("output_activate_portal_module03")}),
      vmap({{"`$PACK`", vlist({
        Value(""),
        vmap({
          {"`$KEY`", Value("`$COPY`")},
          {"`$VAL`", vlist({Value("`$FORMAT`"), Value("upper"), Value("`$COPY`")})}
        })
      })}}));
  if (!idmap.is_map()) idmap = vmap();

  Value env = env_override(vmap({
    {"BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_ACTIVATE_PORTAL_MODULE_ENTID", idmap},
    {"BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE", Value("FALSE")},
    {"BLUEFIN_TECS_USER_BACKOFFICE_TEST_EXPLAIN", Value("FALSE")}
  }));

  Value idmap_resolved = Helpers::toMapAny(getp(env, "BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_ACTIVATE_PORTAL_MODULE_ENTID"));
  if (!idmap_resolved.is_map()) idmap_resolved = idmap;

  bool live = getp(env, "BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE") == Value("TRUE");

  OutputActivatePortalModuleSetup s;
  s.client = client;
  s.data = entity_data;
  s.idmap = idmap_resolved;
  s.env = env;
  s.live = live;
  s.synthetic_only = false;
  s.now = now_ms();
  return s;
}

static void output_activate_portal_module_entity_instance() {
  auto testsdk = BluefinTecsUserBackofficeSDK::testSDK();
  auto ent = testsdk->output_activate_portal_module();
  ASSERT_EQ(ent->getName(), std::string("output_activate_portal_module"), "entity name");
}


static void output_activate_portal_module_entity_basic() {
  auto setup = output_activate_portal_module_basic_setup(Value::undef());
  std::string mode = setup.live ? "live" : "unit";
  for (const std::string& op : std::vector<std::string>{"create"}) {
    auto sk = is_control_skipped("entityOp", std::string("output_activate_portal_module.") + op, mode);
    if (sk.first) { std::cerr << "skip: " << (sk.second.empty()? "sdk-test-control.json" : sk.second) << "\n"; return; }
  }
  auto client = setup.client;
  // CREATE
  auto output_activate_portal_module_ref01_ent = client->output_activate_portal_module();
  Value output_activate_portal_module_ref01_data = Helpers::toMapAny(getp(Struct::getpath(setup.data, {"new", "output_activate_portal_module"}), "output_activate_portal_module_ref01"));
  if (!output_activate_portal_module_ref01_data.is_map()) output_activate_portal_module_ref01_data = vmap();
  {
    Value output_activate_portal_module_ref01_data_result = output_activate_portal_module_ref01_ent->create(Struct::clone(output_activate_portal_module_ref01_data), Value::undef())->data();
    output_activate_portal_module_ref01_data = Helpers::toMapAny(output_activate_portal_module_ref01_data_result);
    if (!output_activate_portal_module_ref01_data.is_map()) output_activate_portal_module_ref01_data = vmap();
    ASSERT_TRUE(output_activate_portal_module_ref01_data.is_map(), "expected create result to be a map");
  }

}

int main() {
  T_RUN(output_activate_portal_module_entity_instance);
  T_RUN(output_activate_portal_module_entity_basic);
  return sdktest::summary("output_activate_portal_module_entity_test");
}
