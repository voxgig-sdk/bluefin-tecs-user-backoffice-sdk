import { BluefinTecsUserBackofficeEntityBase } from '../BluefinTecsUserBackofficeEntityBase';
import type { BluefinTecsUserBackofficeSDK } from '../BluefinTecsUserBackofficeSDK';
import type { Control } from '../types';
import type { OutputListOfUser, OutputListOfUserCreateData } from '../BluefinTecsUserBackofficeTypes';
declare class OutputListOfUserEntity extends BluefinTecsUserBackofficeEntityBase<OutputListOfUser> {
    constructor(client: BluefinTecsUserBackofficeSDK, entopts: any);
    make(this: OutputListOfUserEntity): OutputListOfUserEntity;
    create(this: any, reqdata?: OutputListOfUserCreateData, ctrl?: Control): Promise<OutputListOfUserEntity>;
}
export { OutputListOfUserEntity };
