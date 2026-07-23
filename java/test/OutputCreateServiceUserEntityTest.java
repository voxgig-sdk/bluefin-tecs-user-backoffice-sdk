package voxgig.bluefintecsuserbackofficesdk.sdktest;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.junit.jupiter.api.Assumptions;
import org.junit.jupiter.api.Test;

import voxgig.bluefintecsuserbackofficesdk.core.Helpers;
import voxgig.bluefintecsuserbackofficesdk.core.SdkEntity;
import voxgig.bluefintecsuserbackofficesdk.core.BluefinTecsUserBackofficeSDK;
import voxgig.bluefintecsuserbackofficesdk.utility.Json;
import voxgig.bluefintecsuserbackofficesdk.utility.struct.Struct;

@SuppressWarnings({"unchecked", "unused"})
public class OutputCreateServiceUserEntityTest {

  @Test
  public void instance() {
    BluefinTecsUserBackofficeSDK testsdk = BluefinTecsUserBackofficeSDK.testSDK();
    SdkEntity ent = testsdk.outputCreateServiceUser(null);
    assertNotNull(ent, "expected non-null output_create_service_user entity");
  }

  @Test
  public void basic() {
    RunnerSupport.EntityTestSetup setup = outputCreateServiceUserBasicSetup(null);
    // Per-op sdk-test-control.json skip — basic test exercises a flow
    // with multiple ops; skipping any op skips the whole flow.
    String mode = setup.live ? "live" : "unit";
    for (String op : new String[] { "create" }) {
      String reason = RunnerSupport.skipReason("entityOp", "output_create_service_user." + op, mode);
      Assumptions.assumeTrue(reason == null,
          reason == null || "".equals(reason)
              ? "skipped via sdk-test-control.json" : reason);
    }
    // The basic flow consumes synthetic IDs from the fixture. In live mode
    // without an *_ENTID env override, those IDs hit the live API and 4xx.
    Assumptions.assumeFalse(setup.syntheticOnly,
        "live entity test uses synthetic IDs from fixture — set BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_CREATE_SERVICE_USER_ENTID JSON to run live");
    BluefinTecsUserBackofficeSDK client = setup.client;

    // CREATE
    SdkEntity outputCreateServiceUserRef01Ent = client.outputCreateServiceUser(null);
    Map<String, Object> outputCreateServiceUserRef01Data = Helpers.toMapAny(Struct.getprop(
        Struct.getpath(setup.data, "new.output_create_service_user"), "output_create_service_user_ref01"));

    Object outputCreateServiceUserRef01DataResult = outputCreateServiceUserRef01Ent.create(outputCreateServiceUserRef01Data, null);
    outputCreateServiceUserRef01Data = Helpers.toMapAny(outputCreateServiceUserRef01DataResult);
    assertNotNull(outputCreateServiceUserRef01Data, "expected create result to be a map");

  }

  static RunnerSupport.EntityTestSetup outputCreateServiceUserBasicSetup(Map<String, Object> extra) {
    RunnerSupport.loadEnvLocal();

    Map<String, Object> entityData;
    try {
      String entityDataSource = Files.readString(Path.of(
          "..", ".sdk", "test", "entity", "output_create_service_user", "OutputCreateServiceUserTestData.json"));
      entityData = Helpers.toMapAny(Json.parse(entityDataSource));
    }
    catch (Exception e) {
      throw new AssertionError("failed to read output_create_service_user test data: " + e.getMessage(), e);
    }

    Map<String, Object> options = new LinkedHashMap<>();
    options.put("entity", entityData.get("existing"));

    BluefinTecsUserBackofficeSDK client = BluefinTecsUserBackofficeSDK.testSDK(options, extra);

    // Generate idmap via transform, matching TS pattern.
    List<Object> idnames = new ArrayList<>();
    idnames.add("output_create_service_user01");
    idnames.add("output_create_service_user02");
    idnames.add("output_create_service_user03");
    Object idmap = Struct.transform(idnames, Json.parse(
        "{\"`$PACK`\": [\"\", {"
        + "\"`$KEY`\": \"`$COPY`\","
        + "\"`$VAL`\": [\"`$FORMAT`\", \"upper\", \"`$COPY`\"]"
        + "}]}"));

    // Detect ENTID env override before envOverride consumes it. When live
    // mode is on without a real override, the basic test runs against
    // synthetic IDs from the fixture and 4xx's. Surface this so the test
    // can skip.
    String entidEnvRaw = RunnerSupport.getenv("BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_CREATE_SERVICE_USER_ENTID");
    boolean idmapOverridden = entidEnvRaw != null
        && entidEnvRaw.trim().startsWith("{");

    Map<String, Object> envm = new LinkedHashMap<>();
    envm.put("BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_CREATE_SERVICE_USER_ENTID", idmap);
    envm.put("BLUEFINTECSUSERBACKOFFICE_TEST_LIVE", "FALSE");
    envm.put("BLUEFINTECSUSERBACKOFFICE_TEST_EXPLAIN", "FALSE");
    envm.put("BLUEFINTECSUSERBACKOFFICE_APIKEY", "NONE");
    Map<String, Object> env = RunnerSupport.envOverride(envm);

    Map<String, Object> idmapResolved = Helpers.toMapAny(env.get("BLUEFINTECSUSERBACKOFFICE_TEST_OUTPUT_CREATE_SERVICE_USER_ENTID"));
    if (idmapResolved == null) {
      idmapResolved = Helpers.toMapAny(idmap);
    }

    boolean live = "TRUE".equals(env.get("BLUEFINTECSUSERBACKOFFICE_TEST_LIVE"));
    if (live) {
      Map<String, Object> liveOpts = new LinkedHashMap<>();
      liveOpts.put("apikey", env.get("BLUEFINTECSUSERBACKOFFICE_APIKEY"));
      Object mergedOpts = Struct.merge(Struct.jt(liveOpts, extra));
      client = new BluefinTecsUserBackofficeSDK(Helpers.toMapAny(mergedOpts));
    }

    RunnerSupport.EntityTestSetup setup = new RunnerSupport.EntityTestSetup();
    setup.client = client;
    setup.data = entityData;
    setup.idmap = idmapResolved;
    setup.env = env;
    setup.explain = "TRUE".equals(env.get("BLUEFINTECSUSERBACKOFFICE_TEST_EXPLAIN"));
    setup.live = live;
    setup.syntheticOnly = live && !idmapOverridden;
    setup.now = System.currentTimeMillis();
    return setup;
  }
}
