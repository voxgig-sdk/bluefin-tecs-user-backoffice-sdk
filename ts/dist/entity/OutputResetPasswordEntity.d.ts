import { BluefinTecsUserBackofficeEntityBase } from '../BluefinTecsUserBackofficeEntityBase';
import type { BluefinTecsUserBackofficeSDK } from '../BluefinTecsUserBackofficeSDK';
import type { Control } from '../types';
import type { OutputResetPassword, OutputResetPasswordCreateData } from '../BluefinTecsUserBackofficeTypes';
declare class OutputResetPasswordEntity extends BluefinTecsUserBackofficeEntityBase<OutputResetPassword> {
    constructor(client: BluefinTecsUserBackofficeSDK, entopts: any);
    make(this: OutputResetPasswordEntity): OutputResetPasswordEntity;
    create(this: any, reqdata?: OutputResetPasswordCreateData, ctrl?: Control): Promise<OutputResetPasswordEntity>;
}
export { OutputResetPasswordEntity };
