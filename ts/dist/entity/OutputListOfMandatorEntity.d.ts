import { BluefinTecsUserBackofficeEntityBase } from '../BluefinTecsUserBackofficeEntityBase';
import type { BluefinTecsUserBackofficeSDK } from '../BluefinTecsUserBackofficeSDK';
import type { Control } from '../types';
import type { OutputListOfMandator, OutputListOfMandatorCreateData } from '../BluefinTecsUserBackofficeTypes';
declare class OutputListOfMandatorEntity extends BluefinTecsUserBackofficeEntityBase<OutputListOfMandator> {
    constructor(client: BluefinTecsUserBackofficeSDK, entopts: any);
    make(this: OutputListOfMandatorEntity): OutputListOfMandatorEntity;
    create(this: any, reqdata?: OutputListOfMandatorCreateData, ctrl?: Control): Promise<OutputListOfMandatorEntity>;
}
export { OutputListOfMandatorEntity };
