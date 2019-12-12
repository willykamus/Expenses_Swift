//
//  TransactionModel.swift
//  Expenses
//
//  Created by William Ching on 2019-12-09.
//  Copyright © 2019 William Ching. All rights reserved.
//

import Foundation

class TransactionPresenter {
    
    private var transaction: Transaction
    
    init(withTransaction transaction:Transaction) {
        self.transaction = transaction
    }
    
    func transactionAmount() -> String? {
        
        guard let value = transaction.amount else {
            return nil
        }
        
        return String(value)
    }
    
    func transactionCategory() -> String? {
        return transaction.category?.rawValue
    }
    
    func transactionType() -> String? {
        return transaction.transactionType?.rawValue
    }
    
    func transactionDescription() -> String {
        return transaction.description ?? "None"
    }
    
    func getType() -> TransactionType? {
        return  transaction.transactionType
    }
    
}
