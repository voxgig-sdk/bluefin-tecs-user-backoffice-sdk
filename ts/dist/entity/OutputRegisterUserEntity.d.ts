import { BluefinTecsUserBackofficeEntityBase } from '../BluefinTecsUserBackofficeEntityBase';
import type { BluefinTecsUserBackofficeSDK } from '../BluefinTecsUserBackofficeSDK';
import type { Control } from '../types';
import type { OutputRegisterUser, OutputRegisterUserCreateData } from '../BluefinTecsUserBackofficeTypes';
declare class OutputRegisterUserEntity extends BluefinTecsUserBackofficeEntityBase<OutputRegisterUser> {
    constructor(client: BluefinTecsUserBackofficeSDK, entopts: any);
    make(this: OutputRegisterUserEntity): OutputRegisterUserEntity;
    create(this: any, reqdata?: OutputRegisterUserCreateData, ctrl?: Control): Promise<OutputRegisterUserEntity>;
}
export { OutputRegisterUserEntity };
