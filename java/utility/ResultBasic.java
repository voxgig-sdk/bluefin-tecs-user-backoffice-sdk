package voxgig.bluefintecsuserbackofficesdk.utility;

import voxgig.bluefintecsuserbackofficesdk.core.Context;
import voxgig.bluefintecsuserbackofficesdk.core.Response;
import voxgig.bluefintecsuserbackofficesdk.core.Result;

final class ResultBasic {

  private ResultBasic() {}

  static Result resultBasic(Context ctx) {
    Response response = ctx.response;
    Result result = ctx.result;

    if (result != null && response != null) {
      result.status = response.status;
      result.statusText = response.statusText;

      if (result.status >= 400) {
        String msg = "request: " + result.status + ": " + result.statusText;
        if (result.err != null) {
          String prevmsg = result.err.getMessage();
          result.err = ctx.makeError("request_status", prevmsg + ": " + msg);
        }
        else {
          result.err = ctx.makeError("request_status", msg);
        }
      }
      else if (response.err != null) {
        result.err = response.err;
      }
    }

    return result;
  }
}
