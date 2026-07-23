package voxgig.bluefintecsuserbackofficesdk.utility;

import voxgig.bluefintecsuserbackofficesdk.core.Context;
import voxgig.bluefintecsuserbackofficesdk.core.Response;
import voxgig.bluefintecsuserbackofficesdk.core.Result;

final class ResultBody {

  private ResultBody() {}

  static Result resultBody(Context ctx) {
    Response response = ctx.response;
    Result result = ctx.result;

    if (result != null) {
      if (response != null && response.jsonFunc != null && response.body != null) {
        result.body = response.jsonFunc.get();
      }
    }

    return result;
  }
}
