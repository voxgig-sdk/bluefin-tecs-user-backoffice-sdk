

class BluefinTecsUserBackofficeError extends Error {

  isBluefinTecsUserBackofficeError = true

  sdk = 'BluefinTecsUserBackoffice'

  constructor(code, msg, ctx) {
    super(msg)
    this.code = code
    this.ctx = ctx
  }

}

module.exports = {
  BluefinTecsUserBackofficeError
}

