import { BluefinTecsUserBackofficeEntityBase } from '../BluefinTecsUserBackofficeEntityBase';
import type { BluefinTecsUserBackofficeSDK } from '../BluefinTecsUserBackofficeSDK';
import type { Control } from '../types';
import type { Version, VersionLoadMatch } from '../BluefinTecsUserBackofficeTypes';
declare class VersionEntity extends BluefinTecsUserBackofficeEntityBase<Version> {
    constructor(client: BluefinTecsUserBackofficeSDK, entopts: any);
    make(this: VersionEntity): VersionEntity;
    load(this: any, reqmatch?: VersionLoadMatch, ctrl?: Control): Promise<VersionEntity>;
}
export { VersionEntity };
