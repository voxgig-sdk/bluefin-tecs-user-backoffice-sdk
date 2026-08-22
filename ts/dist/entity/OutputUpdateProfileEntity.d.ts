import { BluefinTecsUserBackofficeEntityBase } from '../BluefinTecsUserBackofficeEntityBase';
import type { BluefinTecsUserBackofficeSDK } from '../BluefinTecsUserBackofficeSDK';
import type { Control } from '../types';
import type { OutputUpdateProfile, OutputUpdateProfileCreateData } from '../BluefinTecsUserBackofficeTypes';
declare class OutputUpdateProfileEntity extends BluefinTecsUserBackofficeEntityBase<OutputUpdateProfile> {
    constructor(client: BluefinTecsUserBackofficeSDK, entopts: any);
    make(this: OutputUpdateProfileEntity): OutputUpdateProfileEntity;
    create(this: any, reqdata?: OutputUpdateProfileCreateData, ctrl?: Control): Promise<OutputUpdateProfileEntity>;
}
export { OutputUpdateProfileEntity };
