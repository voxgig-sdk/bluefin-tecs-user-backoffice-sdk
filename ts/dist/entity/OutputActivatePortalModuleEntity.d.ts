import { BluefinTecsUserBackofficeEntityBase } from '../BluefinTecsUserBackofficeEntityBase';
import type { BluefinTecsUserBackofficeSDK } from '../BluefinTecsUserBackofficeSDK';
import type { Control } from '../types';
import type { OutputActivatePortalModule, OutputActivatePortalModuleCreateData } from '../BluefinTecsUserBackofficeTypes';
declare class OutputActivatePortalModuleEntity extends BluefinTecsUserBackofficeEntityBase<OutputActivatePortalModule> {
    constructor(client: BluefinTecsUserBackofficeSDK, entopts: any);
    make(this: OutputActivatePortalModuleEntity): OutputActivatePortalModuleEntity;
    create(this: any, reqdata?: OutputActivatePortalModuleCreateData, ctrl?: Control): Promise<OutputActivatePortalModuleEntity>;
}
export { OutputActivatePortalModuleEntity };
