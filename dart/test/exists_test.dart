import 'harness.dart';

import '../lib/BluefinTecsUserBackofficeSDK.dart';

void tests() {
  describe('exists', () {
    test('test-mode', (t) async {
      final testsdk = BluefinTecsUserBackofficeSDK.test();
      equal(true, null != testsdk);
    });
  });
}
