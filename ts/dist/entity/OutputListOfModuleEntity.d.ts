import { BluefinTecsUserBackofficeEntityBase } from '../BluefinTecsUserBackofficeEntityBase';
import type { BluefinTecsUserBackofficeSDK } from '../BluefinTecsUserBackofficeSDK';
import type { Control } from '../types';
import type { OutputListOfModule, OutputListOfModuleCreateData } from '../BluefinTecsUserBackofficeTypes';
declare class OutputListOfModuleEntity extends BluefinTecsUserBackofficeEntityBase<OutputListOfModule> {
    constructor(client: BluefinTecsUserBackofficeSDK, entopts: any);
    make(this: OutputListOfModuleEntity): OutputListOfModuleEntity;
    create(this: any, reqdata?: OutputListOfModuleCreateData, ctrl?: Control): Promise<OutputListOfModuleEntity>;
}
export { OutputListOfModuleEntity };
