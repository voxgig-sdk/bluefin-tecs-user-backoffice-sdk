import { BluefinTecsUserBackofficeEntityBase } from '../BluefinTecsUserBackofficeEntityBase';
import type { BluefinTecsUserBackofficeSDK } from '../BluefinTecsUserBackofficeSDK';
import type { Control } from '../types';
import type { OutputAssignRole, OutputAssignRoleCreateData } from '../BluefinTecsUserBackofficeTypes';
declare class OutputAssignRoleEntity extends BluefinTecsUserBackofficeEntityBase<OutputAssignRole> {
    constructor(client: BluefinTecsUserBackofficeSDK, entopts: any);
    make(this: OutputAssignRoleEntity): OutputAssignRoleEntity;
    create(this: any, reqdata?: OutputAssignRoleCreateData, ctrl?: Control): Promise<OutputAssignRoleEntity>;
}
export { OutputAssignRoleEntity };
