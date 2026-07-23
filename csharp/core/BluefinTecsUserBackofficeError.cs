// BluefinTecsUserBackofficeError - the SDK error type. Carries the pipeline error code,
// the originating context and cleaned result/spec snapshots.

namespace BluefinTecsUserBackofficeSdk;

public class BluefinTecsUserBackofficeError : Exception
{
    public bool IsBluefinTecsUserBackofficeError = true;
    public string Sdk = "BluefinTecsUserBackoffice";
    public string Code;
    public Context? Ctx;
    public object? ResultVal;
    public object? SpecVal;

    public BluefinTecsUserBackofficeError(string code, string msg, Context? ctx)
        : base(msg)
    {
        Code = code;
        Ctx = ctx;
    }
}
