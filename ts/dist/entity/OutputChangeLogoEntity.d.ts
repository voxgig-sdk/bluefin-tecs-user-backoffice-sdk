import { BluefinTecsUserBackofficeEntityBase } from '../BluefinTecsUserBackofficeEntityBase';
import type { BluefinTecsUserBackofficeSDK } from '../BluefinTecsUserBackofficeSDK';
import type { Control } from '../types';
import type { OutputChangeLogo, OutputChangeLogoCreateData } from '../BluefinTecsUserBackofficeTypes';
declare class OutputChangeLogoEntity extends BluefinTecsUserBackofficeEntityBase<OutputChangeLogo> {
    constructor(client: BluefinTecsUserBackofficeSDK, entopts: any);
    make(this: OutputChangeLogoEntity): OutputChangeLogoEntity;
    create(this: any, reqdata?: OutputChangeLogoCreateData, ctrl?: Control): Promise<OutputChangeLogoEntity>;
}
export { OutputChangeLogoEntity };
