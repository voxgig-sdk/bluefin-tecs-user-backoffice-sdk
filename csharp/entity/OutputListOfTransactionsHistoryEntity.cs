// OutputListOfTransactionsHistory entity client for the BluefinTecsUserBackoffice SDK.

using Voxgig.Struct;

namespace BluefinTecsUserBackofficeSdk.Entity;

public class OutputListOfTransactionsHistoryEntity : BluefinTecsUserBackofficeEntityBase
{
    public OutputListOfTransactionsHistoryEntity(BluefinTecsUserBackofficeSDK client, Dictionary<string, object?>? entopts = null)
        : base(client, entopts, "output_list_of_transactions_history")
    {
    }

    public override IEntity Make()
    {
        return new OutputListOfTransactionsHistoryEntity(client, CloneOpts());
    }

    // (load not defined by this API - base class throws UnsupportedOp)

    // (list not defined by this API - base class throws UnsupportedOp)

    public override object? Create(Dictionary<string, object?>? reqdata,
        Dictionary<string, object?>? ctrl = null)
    {
        var ctx = utility.MakeContext(new Dictionary<string, object?>
        {
            ["opname"] = "create",
            ["ctrl"] = ctrl,
            ["match"] = match,
            ["data"] = data,
            ["reqdata"] = reqdata,
        }, entctx);
    
        return RunOp(ctx, () =>
        {
            if (ctx.Result != null)
            {
                if (ctx.Result.Resdata != null)
                {
                    data = Helpers.ToMapAny(
                        Voxgig.Struct.StructUtils.Clone(ctx.Result.Resdata))
                        ?? new Dictionary<string, object?>();
                }
            }
        });
    }

    // (update not defined by this API - base class throws UnsupportedOp)

    // (remove not defined by this API - base class throws UnsupportedOp)
}
