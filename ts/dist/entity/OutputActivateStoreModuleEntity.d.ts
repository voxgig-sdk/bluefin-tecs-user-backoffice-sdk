import { BluefinTecsUserBackofficeEntityBase } from '../BluefinTecsUserBackofficeEntityBase';
import type { BluefinTecsUserBackofficeSDK } from '../BluefinTecsUserBackofficeSDK';
import type { Control } from '../types';
import type { OutputActivateStoreModule, OutputActivateStoreModuleCreateData } from '../BluefinTecsUserBackofficeTypes';
declare class OutputActivateStoreModuleEntity extends BluefinTecsUserBackofficeEntityBase<OutputActivateStoreModule> {
    constructor(client: BluefinTecsUserBackofficeSDK, entopts: any);
    make(this: OutputActivateStoreModuleEntity): OutputActivateStoreModuleEntity;
    create(this: any, reqdata?: OutputActivateStoreModuleCreateData, ctrl?: Control): Promise<OutputActivateStoreModuleEntity>;
}
export { OutputActivateStoreModuleEntity };
