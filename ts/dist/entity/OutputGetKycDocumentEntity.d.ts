import { BluefinTecsUserBackofficeEntityBase } from '../BluefinTecsUserBackofficeEntityBase';
import type { BluefinTecsUserBackofficeSDK } from '../BluefinTecsUserBackofficeSDK';
import type { Control } from '../types';
import type { OutputGetKycDocument, OutputGetKycDocumentCreateData } from '../BluefinTecsUserBackofficeTypes';
declare class OutputGetKycDocumentEntity extends BluefinTecsUserBackofficeEntityBase<OutputGetKycDocument> {
    constructor(client: BluefinTecsUserBackofficeSDK, entopts: any);
    make(this: OutputGetKycDocumentEntity): OutputGetKycDocumentEntity;
    create(this: any, reqdata?: OutputGetKycDocumentCreateData, ctrl?: Control): Promise<OutputGetKycDocumentEntity>;
}
export { OutputGetKycDocumentEntity };
