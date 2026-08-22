import { BluefinTecsUserBackofficeEntityBase } from '../BluefinTecsUserBackofficeEntityBase';
import type { BluefinTecsUserBackofficeSDK } from '../BluefinTecsUserBackofficeSDK';
import type { Control } from '../types';
import type { OutputListOfAvailableRole, OutputListOfAvailableRoleCreateData } from '../BluefinTecsUserBackofficeTypes';
declare class OutputListOfAvailableRoleEntity extends BluefinTecsUserBackofficeEntityBase<OutputListOfAvailableRole> {
    constructor(client: BluefinTecsUserBackofficeSDK, entopts: any);
    make(this: OutputListOfAvailableRoleEntity): OutputListOfAvailableRoleEntity;
    create(this: any, reqdata?: OutputListOfAvailableRoleCreateData, ctrl?: Control): Promise<OutputListOfAvailableRoleEntity>;
}
export { OutputListOfAvailableRoleEntity };
