import { Context } from './Context';
declare class BluefinTecsUserBackofficeError extends Error {
    isBluefinTecsUserBackofficeError: boolean;
    sdk: string;
    code: string;
    ctx: Context;
    status: number;
    get notFound(): boolean;
    constructor(code: string, msg: string, ctx: Context);
}
export { BluefinTecsUserBackofficeError };
