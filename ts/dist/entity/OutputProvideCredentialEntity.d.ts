import { BluefinTecsUserBackofficeEntityBase } from '../BluefinTecsUserBackofficeEntityBase';
import type { BluefinTecsUserBackofficeSDK } from '../BluefinTecsUserBackofficeSDK';
import type { Control } from '../types';
import type { OutputProvideCredential, OutputProvideCredentialCreateData } from '../BluefinTecsUserBackofficeTypes';
declare class OutputProvideCredentialEntity extends BluefinTecsUserBackofficeEntityBase<OutputProvideCredential> {
    constructor(client: BluefinTecsUserBackofficeSDK, entopts: any);
    make(this: OutputProvideCredentialEntity): OutputProvideCredentialEntity;
    create(this: any, reqdata?: OutputProvideCredentialCreateData, ctrl?: Control): Promise<OutputProvideCredentialEntity>;
}
export { OutputProvideCredentialEntity };
