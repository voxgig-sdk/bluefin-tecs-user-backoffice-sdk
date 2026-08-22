import { BluefinTecsUserBackofficeEntityBase } from '../BluefinTecsUserBackofficeEntityBase';
import type { BluefinTecsUserBackofficeSDK } from '../BluefinTecsUserBackofficeSDK';
import type { Control } from '../types';
import type { OutputUpdateConsumer, OutputUpdateConsumerCreateData } from '../BluefinTecsUserBackofficeTypes';
declare class OutputUpdateConsumerEntity extends BluefinTecsUserBackofficeEntityBase<OutputUpdateConsumer> {
    constructor(client: BluefinTecsUserBackofficeSDK, entopts: any);
    make(this: OutputUpdateConsumerEntity): OutputUpdateConsumerEntity;
    create(this: any, reqdata?: OutputUpdateConsumerCreateData, ctrl?: Control): Promise<OutputUpdateConsumerEntity>;
}
export { OutputUpdateConsumerEntity };
