import { BluefinTecsUserBackofficeEntityBase } from '../BluefinTecsUserBackofficeEntityBase';
import type { BluefinTecsUserBackofficeSDK } from '../BluefinTecsUserBackofficeSDK';
import type { Control } from '../types';
import type { OutputCreateServiceUser, OutputCreateServiceUserCreateData } from '../BluefinTecsUserBackofficeTypes';
declare class OutputCreateServiceUserEntity extends BluefinTecsUserBackofficeEntityBase<OutputCreateServiceUser> {
    constructor(client: BluefinTecsUserBackofficeSDK, entopts: any);
    make(this: OutputCreateServiceUserEntity): OutputCreateServiceUserEntity;
    create(this: any, reqdata?: OutputCreateServiceUserCreateData, ctrl?: Control): Promise<OutputCreateServiceUserEntity>;
}
export { OutputCreateServiceUserEntity };
