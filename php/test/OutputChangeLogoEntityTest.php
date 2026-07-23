<?php
declare(strict_types=1);

// OutputChangeLogo entity test

require_once __DIR__ . '/../bluefintecsuserbackoffice_sdk.php';
require_once __DIR__ . '/Runner.php';

use PHPUnit\Framework\TestCase;
use Voxgig\Struct\Struct as Vs;

class OutputChangeLogoEntityTest extends TestCase
{
    public function test_create_instance(): void
    {
        $testsdk = BluefinTecsUserBackofficeSDK::test(null, null);
        $ent = $testsdk->OutputChangeLogo(null);
        $this->assertNotNull($ent);
    }

    public function test_basic_flow(): void
    {
        $setup = output_change_logo_basic_setup(null);
        // Per-op sdk-test-control.json skip.
        $_live = !empty($setup["live"]);
        foreach (["create"] as $_op) {
            [$_shouldSkip, $_reason] = Runner::is_control_skipped("entityOp", "output_change_logo." . $_op, $_live ? "live" : "unit");
            if ($_shouldSkip) {
                $this->markTestSkipped($_reason ?? "skipped via sdk-test-control.json");
                return;
            }
        }
        // The basic flow consumes synthetic IDs from the fixture. In live mode
        // without an *_ENTID env override, those IDs hit the live API and 4xx.
        if (!empty($setup["synthetic_only"])) {
            $this->markTestSkipped("live entity test uses synthetic IDs from fixture — set BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_CHANGE_LOGO_ENTID JSON to run live");
            return;
        }
        $client = $setup["client"];

        // CREATE
        $output_change_logo_ref01_ent = $client->OutputChangeLogo(null);
        $output_change_logo_ref01_data = Helpers::to_map(Vs::getprop(
            Vs::getpath($setup["data"], "new.output_change_logo"), "output_change_logo_ref01"));

        $output_change_logo_ref01_data_result = $output_change_logo_ref01_ent->create($output_change_logo_ref01_data, null);
        $output_change_logo_ref01_data = Helpers::to_map($output_change_logo_ref01_data_result);
        $this->assertNotNull($output_change_logo_ref01_data);

    }
}

function output_change_logo_basic_setup($extra)
{
    Runner::load_env_local();

    $entity_data_file = __DIR__ . '/../../.sdk/test/entity/output_change_logo/OutputChangeLogoTestData.json';
    $entity_data_source = file_get_contents($entity_data_file);
    $entity_data = json_decode($entity_data_source, true);

    $options = [];
    $options["entity"] = $entity_data["existing"];

    $client = BluefinTecsUserBackofficeSDK::test($options, $extra);

    // Generate idmap.
    $idmap = [];
    foreach (["output_change_logo01", "output_change_logo02", "output_change_logo03"] as $k) {
        $idmap[$k] = strtoupper($k);
    }

    // Detect ENTID env override before envOverride consumes it. When live
    // mode is on without a real override, the basic test runs against synthetic
    // IDs from the fixture and 4xx's. Surface this so the test can skip.
    $entid_env_raw = getenv("BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_CHANGE_LOGO_ENTID");
    $idmap_overridden = $entid_env_raw !== false && str_starts_with(trim($entid_env_raw), "{");

    $env = Runner::env_override([
        "BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_CHANGE_LOGO_ENTID" => $idmap,
        "BLUEFINTECSUSERBACKOFFICE_TEST_LIVE" => "FALSE",
        "BLUEFINTECSUSERBACKOFFICE_TEST_EXPLAIN" => "FALSE",
        "BLUEFINTECSUSERBACKOFFICE_APIKEY" => "NONE",
    ]);

    $idmap_resolved = Helpers::to_map(
        $env["BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_CHANGE_LOGO_ENTID"]);
    if ($idmap_resolved === null) {
        $idmap_resolved = Helpers::to_map($idmap);
    }

    if ($env["BLUEFINTECSUSERBACKOFFICE_TEST_LIVE"] === "TRUE") {
        $merged_opts = Vs::merge([
            [
                "apikey" => $env["BLUEFINTECSUSERBACKOFFICE_APIKEY"],
            ],
            $extra ?? [],
        ]);
        $client = new BluefinTecsUserBackofficeSDK(Helpers::to_map($merged_opts));
    }

    $live = $env["BLUEFINTECSUSERBACKOFFICE_TEST_LIVE"] === "TRUE";
    return [
        "client" => $client,
        "data" => $entity_data,
        "idmap" => $idmap_resolved,
        "env" => $env,
        "explain" => $env["BLUEFINTECSUSERBACKOFFICE_TEST_EXPLAIN"] === "TRUE",
        "live" => $live,
        "synthetic_only" => $live && !$idmap_overridden,
        "now" => (int)(microtime(true) * 1000),
    ];
}
