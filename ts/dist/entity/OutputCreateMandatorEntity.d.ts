import { BluefinTecsUserBackofficeEntityBase } from '../BluefinTecsUserBackofficeEntityBase';
import type { BluefinTecsUserBackofficeSDK } from '../BluefinTecsUserBackofficeSDK';
import type { Control } from '../types';
import type { OutputCreateMandator, OutputCreateMandatorCreateData } from '../BluefinTecsUserBackofficeTypes';
declare class OutputCreateMandatorEntity extends BluefinTecsUserBackofficeEntityBase<OutputCreateMandator> {
    constructor(client: BluefinTecsUserBackofficeSDK, entopts: any);
    make(this: OutputCreateMandatorEntity): OutputCreateMandatorEntity;
    create(this: any, reqdata?: OutputCreateMandatorCreateData, ctrl?: Control): Promise<OutputCreateMandatorEntity>;
}
export { OutputCreateMandatorEntity };
