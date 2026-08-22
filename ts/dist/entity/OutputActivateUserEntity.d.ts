import { BluefinTecsUserBackofficeEntityBase } from '../BluefinTecsUserBackofficeEntityBase';
import type { BluefinTecsUserBackofficeSDK } from '../BluefinTecsUserBackofficeSDK';
import type { Control } from '../types';
import type { OutputActivateUser, OutputActivateUserCreateData } from '../BluefinTecsUserBackofficeTypes';
declare class OutputActivateUserEntity extends BluefinTecsUserBackofficeEntityBase<OutputActivateUser> {
    constructor(client: BluefinTecsUserBackofficeSDK, entopts: any);
    make(this: OutputActivateUserEntity): OutputActivateUserEntity;
    create(this: any, reqdata?: OutputActivateUserCreateData, ctrl?: Control): Promise<OutputActivateUserEntity>;
}
export { OutputActivateUserEntity };
