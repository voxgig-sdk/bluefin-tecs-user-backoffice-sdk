
import { Context } from './Context'


class BluefinTecsUserBackofficeError extends Error {

  isBluefinTecsUserBackofficeError = true

  sdk = 'BluefinTecsUserBackoffice'

  code: string
  ctx: Context

  constructor(code: string, msg: string, ctx: Context) {
    super(msg)
    this.code = code
    this.ctx = ctx
  }

}

export {
  BluefinTecsUserBackofficeError
}

