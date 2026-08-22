import { BluefinTecsUserBackofficeEntityBase } from '../BluefinTecsUserBackofficeEntityBase';
import type { BluefinTecsUserBackofficeSDK } from '../BluefinTecsUserBackofficeSDK';
import type { Control } from '../types';
import type { OutputDeactivateUser, OutputDeactivateUserCreateData } from '../BluefinTecsUserBackofficeTypes';
declare class OutputDeactivateUserEntity extends BluefinTecsUserBackofficeEntityBase<OutputDeactivateUser> {
    constructor(client: BluefinTecsUserBackofficeSDK, entopts: any);
    make(this: OutputDeactivateUserEntity): OutputDeactivateUserEntity;
    create(this: any, reqdata?: OutputDeactivateUserCreateData, ctrl?: Control): Promise<OutputDeactivateUserEntity>;
}
export { OutputDeactivateUserEntity };
