import { BluefinTecsUserBackofficeEntityBase } from '../BluefinTecsUserBackofficeEntityBase';
import type { BluefinTecsUserBackofficeSDK } from '../BluefinTecsUserBackofficeSDK';
import type { Control } from '../types';
import type { OutputListOfTransactionsHistory, OutputListOfTransactionsHistoryCreateData } from '../BluefinTecsUserBackofficeTypes';
declare class OutputListOfTransactionsHistoryEntity extends BluefinTecsUserBackofficeEntityBase<OutputListOfTransactionsHistory> {
    constructor(client: BluefinTecsUserBackofficeSDK, entopts: any);
    make(this: OutputListOfTransactionsHistoryEntity): OutputListOfTransactionsHistoryEntity;
    create(this: any, reqdata?: OutputListOfTransactionsHistoryCreateData, ctrl?: Control): Promise<OutputListOfTransactionsHistoryEntity>;
}
export { OutputListOfTransactionsHistoryEntity };
