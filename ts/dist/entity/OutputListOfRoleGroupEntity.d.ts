import { BluefinTecsUserBackofficeEntityBase } from '../BluefinTecsUserBackofficeEntityBase';
import type { BluefinTecsUserBackofficeSDK } from '../BluefinTecsUserBackofficeSDK';
import type { Control } from '../types';
import type { OutputListOfRoleGroup, OutputListOfRoleGroupCreateData } from '../BluefinTecsUserBackofficeTypes';
declare class OutputListOfRoleGroupEntity extends BluefinTecsUserBackofficeEntityBase<OutputListOfRoleGroup> {
    constructor(client: BluefinTecsUserBackofficeSDK, entopts: any);
    make(this: OutputListOfRoleGroupEntity): OutputListOfRoleGroupEntity;
    create(this: any, reqdata?: OutputListOfRoleGroupCreateData, ctrl?: Control): Promise<OutputListOfRoleGroupEntity>;
}
export { OutputListOfRoleGroupEntity };
