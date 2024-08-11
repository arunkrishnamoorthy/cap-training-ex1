using com.sophistex.exercise1.tx as tx from '../db/transactions';

service TransactionService {
    entity Orders as projection on tx.Orders;
}