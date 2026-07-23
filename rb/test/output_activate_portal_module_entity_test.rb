# OutputActivatePortalModule entity test

require "minitest/autorun"
require "json"
require_relative "../BluefinTecsUserBackoffice_sdk"
require_relative "runner"

class OutputActivatePortalModuleEntityTest < Minitest::Test
  def test_create_instance
    testsdk = BluefinTecsUserBackofficeSDK.test(nil, nil)
    ent = testsdk.OutputActivatePortalModule(nil)
    assert !ent.nil?
  end

  def test_basic_flow
    setup = output_activate_portal_module_basic_setup(nil)
    # Per-op sdk-test-control.json skip.
    _live = setup[:live] || false
    ["create"].each do |_op|
      _should_skip, _reason = Runner.is_control_skipped("entityOp", "output_activate_portal_module." + _op, _live ? "live" : "unit")
      if _should_skip
        skip(_reason || "skipped via sdk-test-control.json")
        return
      end
    end
    # The basic flow consumes synthetic IDs from the fixture. In live mode
    # without an *_ENTID env override, those IDs hit the live API and 4xx.
    if setup[:synthetic_only]
      skip "live entity test uses synthetic IDs from fixture — set BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_ACTIVATE_PORTAL_MODULE_ENTID JSON to run live"
      return
    end
    client = setup[:client]

    # CREATE
    output_activate_portal_module_ref01_ent = client.OutputActivatePortalModule(nil)
    output_activate_portal_module_ref01_data = Helpers.to_map(Vs.getprop(
      Vs.getpath(setup[:data], "new.output_activate_portal_module"), "output_activate_portal_module_ref01"))

    output_activate_portal_module_ref01_data_result = output_activate_portal_module_ref01_ent.create(output_activate_portal_module_ref01_data, nil)
    output_activate_portal_module_ref01_data = Helpers.to_map(output_activate_portal_module_ref01_data_result)
    assert !output_activate_portal_module_ref01_data.nil?

  end
end

def output_activate_portal_module_basic_setup(extra)
  Runner.load_env_local

  entity_data_file = File.join(__dir__, "..", "..", ".sdk", "test", "entity", "output_activate_portal_module", "OutputActivatePortalModuleTestData.json")
  entity_data_source = File.read(entity_data_file)
  entity_data = JSON.parse(entity_data_source)

  options = {}
  options["entity"] = entity_data["existing"]

  client = BluefinTecsUserBackofficeSDK.test(options, extra)

  # Generate idmap via transform.
  idmap = Vs.transform(
    ["output_activate_portal_module01", "output_activate_portal_module02", "output_activate_portal_module03"],
    {
      "`$PACK`" => ["", {
        "`$KEY`" => "`$COPY`",
        "`$VAL`" => ["`$FORMAT`", "upper", "`$COPY`"],
      }],
    }
  )

  # Detect ENTID env override before envOverride consumes it. When live
  # mode is on without a real override, the basic test runs against synthetic
  # IDs from the fixture and 4xx's. Surface this so the test can skip.
  entid_env_raw = ENV["BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_ACTIVATE_PORTAL_MODULE_ENTID"]
  idmap_overridden = !entid_env_raw.nil? && entid_env_raw.strip.start_with?("{")

  env = Runner.env_override({
    "BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_ACTIVATE_PORTAL_MODULE_ENTID" => idmap,
    "BLUEFINTECSUSERBACKOFFICE_TEST_LIVE" => "FALSE",
    "BLUEFINTECSUSERBACKOFFICE_TEST_EXPLAIN" => "FALSE",
    "BLUEFINTECSUSERBACKOFFICE_APIKEY" => "NONE",
  })

  idmap_resolved = Helpers.to_map(
    env["BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_ACTIVATE_PORTAL_MODULE_ENTID"])
  if idmap_resolved.nil?
    idmap_resolved = Helpers.to_map(idmap)
  end

  if env["BLUEFINTECSUSERBACKOFFICE_TEST_LIVE"] == "TRUE"
    merged_opts = Vs.merge([
      {
        "apikey" => env["BLUEFINTECSUSERBACKOFFICE_APIKEY"],
      },
      extra || {},
    ])
    client = BluefinTecsUserBackofficeSDK.new(Helpers.to_map(merged_opts))
  end

  live = env["BLUEFINTECSUSERBACKOFFICE_TEST_LIVE"] == "TRUE"
  {
    client: client,
    data: entity_data,
    idmap: idmap_resolved,
    env: env,
    explain: env["BLUEFINTECSUSERBACKOFFICE_TEST_EXPLAIN"] == "TRUE",
    live: live,
    synthetic_only: live && !idmap_overridden,
    now: (Time.now.to_f * 1000).to_i,
  }
end
