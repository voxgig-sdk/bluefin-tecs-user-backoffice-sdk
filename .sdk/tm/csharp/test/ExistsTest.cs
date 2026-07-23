// BluefinTecsUserBackoffice SDK exists test.

using Xunit;

using BluefinTecsUserBackofficeSdk;

namespace BluefinTecsUserBackofficeSdk.Test;

public class ExistsTest
{
    [Fact]
    public void TestMode()
    {
        var testsdk = BluefinTecsUserBackofficeSDK.TestSDK(null, null);
        Assert.NotNull(testsdk);
    }
}
