//
//  TransactionModel.swift
//  Expenses
//
//  Created by William Ching on 2019-12-09.
//  Copyright © 2019 William Ching. All rights reserved.
//

import Foundation

class TransactionModel {
    
    var transaction: Transaction?
    
    init(withTransaction transaction:Transaction) {
        self.transaction = transaction
    }
    
    func transactionAmount() -> String {
        return String(transaction?.amount)
    }
    
    func transactionCategory() -> String {
        return transaction?.category
    }
    
    func transactionType() -> String {
        return transaction?.transactionType.rawValue
    }
    
    func transactionSections() -> Int {
        return TransactionSection.allCases.count
    }
    
    enum TransactionSection: CaseIterable {
        
        case amount, category, description
        
    }
    
}
