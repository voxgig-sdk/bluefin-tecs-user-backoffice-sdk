class BluefinTecsUserBackofficeError extends Error {
  final bool isBluefinTecsUserBackofficeError = true;

  final String sdk = 'BluefinTecsUserBackoffice';

  String code;
  String message;
  dynamic ctx;

  // Populated by makeError with the (cleaned) result and spec.
  dynamic result;
  dynamic spec;

  BluefinTecsUserBackofficeError(this.code, this.message, [this.ctx]);

  @override
  String toString() => 'BluefinTecsUserBackofficeError: ' + code + ': ' + message;
}
