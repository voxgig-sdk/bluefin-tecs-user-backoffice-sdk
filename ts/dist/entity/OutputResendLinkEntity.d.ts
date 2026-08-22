import { BluefinTecsUserBackofficeEntityBase } from '../BluefinTecsUserBackofficeEntityBase';
import type { BluefinTecsUserBackofficeSDK } from '../BluefinTecsUserBackofficeSDK';
import type { Control } from '../types';
import type { OutputResendLink, OutputResendLinkCreateData } from '../BluefinTecsUserBackofficeTypes';
declare class OutputResendLinkEntity extends BluefinTecsUserBackofficeEntityBase<OutputResendLink> {
    constructor(client: BluefinTecsUserBackofficeSDK, entopts: any);
    make(this: OutputResendLinkEntity): OutputResendLinkEntity;
    create(this: any, reqdata?: OutputResendLinkCreateData, ctrl?: Control): Promise<OutputResendLinkEntity>;
}
export { OutputResendLinkEntity };
