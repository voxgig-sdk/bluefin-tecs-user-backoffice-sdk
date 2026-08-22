import { BluefinTecsUserBackofficeEntityBase } from '../BluefinTecsUserBackofficeEntityBase';
import type { BluefinTecsUserBackofficeSDK } from '../BluefinTecsUserBackofficeSDK';
import type { Control } from '../types';
import type { OutputGetLogo, OutputGetLogoLoadMatch } from '../BluefinTecsUserBackofficeTypes';
declare class OutputGetLogoEntity extends BluefinTecsUserBackofficeEntityBase<OutputGetLogo> {
    constructor(client: BluefinTecsUserBackofficeSDK, entopts: any);
    make(this: OutputGetLogoEntity): OutputGetLogoEntity;
    load(this: any, reqmatch?: OutputGetLogoLoadMatch, ctrl?: Control): Promise<OutputGetLogoEntity>;
}
export { OutputGetLogoEntity };
