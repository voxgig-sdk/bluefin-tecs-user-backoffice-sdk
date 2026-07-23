package voxgig.bluefintecsuserbackofficesdk.entity;

import java.util.LinkedHashMap;
import java.util.Map;

import voxgig.bluefintecsuserbackofficesdk.core.Context;
import voxgig.bluefintecsuserbackofficesdk.core.Entity;
import voxgig.bluefintecsuserbackofficesdk.core.Helpers;
import voxgig.bluefintecsuserbackofficesdk.core.SdkClient;
import voxgig.bluefintecsuserbackofficesdk.utility.struct.Struct;

/** OutputActivateDigitalModule entity client for the BluefinTecsUserBackoffice SDK. */
@SuppressWarnings({"unchecked", "unused"})
public class OutputActivateDigitalModuleEntity extends EntityBase {

  public OutputActivateDigitalModuleEntity(SdkClient client, Map<String, Object> entopts) {
    super("output_activate_digital_module", client, entopts);
  }

  @Override
  public Entity make() {
    Map<String, Object> opts = new LinkedHashMap<>(this.entopts);
    return new OutputActivateDigitalModuleEntity(this.client, opts);
  }

  @Override
  public Object load(Map<String, Object> req, Map<String, Object> ctrl) {
    throw Helpers.unsupportedOp("load", this.name);
  }


  @Override
  public Object list(Map<String, Object> req, Map<String, Object> ctrl) {
    throw Helpers.unsupportedOp("list", this.name);
  }



  @Override
  public Object create(Map<String, Object> reqdata, Map<String, Object> ctrl) {
    Map<String, Object> ctxmap = new LinkedHashMap<>();
    ctxmap.put("opname", "create");
    ctxmap.put("ctrl", ctrl);
    ctxmap.put("match", this.match);
    ctxmap.put("data", this.data);
    ctxmap.put("reqdata", reqdata);
    Context ctx = this.utility.makeContext.apply(ctxmap, this.entctx);

    return runOp(ctx, () -> {
      if (ctx.result != null) {
        if (ctx.result.resdata != null) {
          Map<String, Object> d = Helpers.toMapAny(Struct.clone(ctx.result.resdata));
          this.data = d == null ? new LinkedHashMap<>() : d;
        }
      }
    });
  }



  @Override
  public Object update(Map<String, Object> req, Map<String, Object> ctrl) {
    throw Helpers.unsupportedOp("update", this.name);
  }


  @Override
  public Object remove(Map<String, Object> req, Map<String, Object> ctrl) {
    throw Helpers.unsupportedOp("remove", this.name);
  }

}
