# OutputResetPassword entity test

require "minitest/autorun"
require "json"
require_relative "../BluefinTecsUserBackoffice_sdk"
require_relative "runner"

class OutputResetPasswordEntityTest < Minitest::Test
  def test_create_instance
    testsdk = BluefinTecsUserBackofficeSDK.test(nil, nil)
    ent = testsdk.OutputResetPassword(nil)
    assert !ent.nil?
  end

  def test_basic_flow
    setup = output_reset_password_basic_setup(nil)
    # Per-op sdk-test-control.json skip.
    _live = setup[:live] || false
    ["create"].each do |_op|
      _should_skip, _reason = Runner.is_control_skipped("entityOp", "output_reset_password." + _op, _live ? "live" : "unit")
      if _should_skip
        skip(_reason || "skipped via sdk-test-control.json")
        return
      end
    end
    # The basic flow consumes synthetic IDs from the fixture. In live mode
    # without an *_ENTID env override, those IDs hit the live API and 4xx.
    if setup[:synthetic_only]
      skip "live entity test uses synthetic IDs from fixture — set BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_RESET_PASSWORD_ENTID JSON to run live"
      return
    end
    client = setup[:client]

    # CREATE
    output_reset_password_ref01_ent = client.OutputResetPassword(nil)
    output_reset_password_ref01_data = Helpers.to_map(Vs.getprop(
      Vs.getpath(setup[:data], "new.output_reset_password"), "output_reset_password_ref01"))

    output_reset_password_ref01_data_result = output_reset_password_ref01_ent.create(output_reset_password_ref01_data, nil)
    output_reset_password_ref01_data = Helpers.to_map(output_reset_password_ref01_data_result)
    assert !output_reset_password_ref01_data.nil?

  end
end

def output_reset_password_basic_setup(extra)
  Runner.load_env_local

  entity_data_file = File.join(__dir__, "..", "..", ".sdk", "test", "entity", "output_reset_password", "OutputResetPasswordTestData.json")
  entity_data_source = File.read(entity_data_file)
  entity_data = JSON.parse(entity_data_source)

  options = {}
  options["entity"] = entity_data["existing"]

  client = BluefinTecsUserBackofficeSDK.test(options, extra)

  # Generate idmap via transform.
  idmap = Vs.transform(
    ["output_reset_password01", "output_reset_password02", "output_reset_password03"],
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
  entid_env_raw = ENV["BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_RESET_PASSWORD_ENTID"]
  idmap_overridden = !entid_env_raw.nil? && entid_env_raw.strip.start_with?("{")

  env = Runner.env_override({
    "BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_RESET_PASSWORD_ENTID" => idmap,
    "BLUEFINTECSUSERBACKOFFICE_TEST_LIVE" => "FALSE",
    "BLUEFINTECSUSERBACKOFFICE_TEST_EXPLAIN" => "FALSE",
    "BLUEFINTECSUSERBACKOFFICE_APIKEY" => "NONE",
  })

  idmap_resolved = Helpers.to_map(
    env["BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_RESET_PASSWORD_ENTID"])
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
