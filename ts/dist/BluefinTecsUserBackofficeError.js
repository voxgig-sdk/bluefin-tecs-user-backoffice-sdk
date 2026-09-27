"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.BluefinTecsUserBackofficeError = void 0;
class BluefinTecsUserBackofficeError extends Error {
    isBluefinTecsUserBackofficeError = true;
    sdk = 'BluefinTecsUserBackoffice';
    code;
    ctx;
    status = -1;
    // `err.notFound` rather than a magic number at every call site.
    get notFound() { return 404 === this.status; }
    constructor(code, msg, ctx) {
        super(msg);
        this.code = code;
        this.ctx = ctx;
    }
}
exports.BluefinTecsUserBackofficeError = BluefinTecsUserBackofficeError;
//# sourceMappingURL=BluefinTecsUserBackofficeError.js.map