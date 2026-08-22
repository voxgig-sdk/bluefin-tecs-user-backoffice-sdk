import { BluefinTecsUserBackofficeEntityBase } from '../BluefinTecsUserBackofficeEntityBase';
import type { BluefinTecsUserBackofficeSDK } from '../BluefinTecsUserBackofficeSDK';
import type { Control } from '../types';
import type { OutputActivateDigitalModule, OutputActivateDigitalModuleCreateData } from '../BluefinTecsUserBackofficeTypes';
declare class OutputActivateDigitalModuleEntity extends BluefinTecsUserBackofficeEntityBase<OutputActivateDigitalModule> {
    constructor(client: BluefinTecsUserBackofficeSDK, entopts: any);
    make(this: OutputActivateDigitalModuleEntity): OutputActivateDigitalModuleEntity;
    create(this: any, reqdata?: OutputActivateDigitalModuleCreateData, ctrl?: Control): Promise<OutputActivateDigitalModuleEntity>;
}
export { OutputActivateDigitalModuleEntity };
