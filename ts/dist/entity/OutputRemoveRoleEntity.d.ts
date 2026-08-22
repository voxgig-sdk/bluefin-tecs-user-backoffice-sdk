import { BluefinTecsUserBackofficeEntityBase } from '../BluefinTecsUserBackofficeEntityBase';
import type { BluefinTecsUserBackofficeSDK } from '../BluefinTecsUserBackofficeSDK';
import type { Control } from '../types';
import type { OutputRemoveRole, OutputRemoveRoleCreateData } from '../BluefinTecsUserBackofficeTypes';
declare class OutputRemoveRoleEntity extends BluefinTecsUserBackofficeEntityBase<OutputRemoveRole> {
    constructor(client: BluefinTecsUserBackofficeSDK, entopts: any);
    make(this: OutputRemoveRoleEntity): OutputRemoveRoleEntity;
    create(this: any, reqdata?: OutputRemoveRoleCreateData, ctrl?: Control): Promise<OutputRemoveRoleEntity>;
}
export { OutputRemoveRoleEntity };
