package voxgig.bluefintecsuserbackofficesdk.utility;

import java.util.LinkedHashMap;
import java.util.Map;

import voxgig.bluefintecsuserbackofficesdk.core.Context;
import voxgig.bluefintecsuserbackofficesdk.core.Response;
import voxgig.bluefintecsuserbackofficesdk.core.Result;
import voxgig.bluefintecsuserbackofficesdk.core.Spec;
import voxgig.bluefintecsuserbackofficesdk.core.Utility;

@SuppressWarnings({"unchecked"})
final class MakeRequest {

  private MakeRequest() {}

  static Response makeRequest(Context ctx) {
    Object outRequest = ctx.out.get("request");
    if (outRequest instanceof Response) {
      return (Response) outRequest;
    }

    Spec spec = ctx.spec;
    Utility utility = ctx.utility;

    Response response = new Response(new LinkedHashMap<>());
    Result result = new Result(new LinkedHashMap<>());
    ctx.result = result;

    if (spec == null) {
      throw ctx.makeError("request_no_spec",
          "Expected context spec property to be defined.");
    }

    Map<String, Object> fetchdef;
    try {
      fetchdef = utility.makeFetchDef.apply(ctx);
    }
    catch (RuntimeException err) {
      response.err = err;
      ctx.response = response;
      spec.step = "postrequest";
      return response;
    }

    if (ctx.ctrl.explain != null) {
      ctx.ctrl.explain.put("fetchdef", fetchdef);
    }

    spec.step = "prerequest";

    Object url = fetchdef.get("url");
    Object fetched = null;
    RuntimeException fetchErr = null;
    try {
      fetched = utility.fetcher.fetch(ctx,
          url instanceof String ? (String) url : "", fetchdef);
    }
    catch (RuntimeException err) {
      fetchErr = err;
    }

    if (fetchErr != null) {
      response.err = fetchErr;
    }
    else if (fetched == null) {
      Map<String, Object> resmap = new LinkedHashMap<>();
      resmap.put("err", ctx.makeError("request_no_response", "response: undefined"));
      response = new Response(resmap);
    }
    else if (fetched instanceof Map) {
      response = new Response((Map<String, Object>) fetched);
    }
    else {
      response.err = ctx.makeError("request_invalid_response", "response: invalid type");
    }

    spec.step = "postrequest";
    ctx.response = response;

    return response;
  }
}
