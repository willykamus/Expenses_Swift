//
//  DataSource.swift
//  Expenses
//
//  Created by William Ching on 2019-12-06.
//  Copyright © 2019 William Ching. All rights reserved.
//

import Foundation

protocol TransactionRepository {
    func getTransaction(success: @escaping ([Transaction])->())
}

protocol AddTransactionRespository {
    func addTransaction(document:Transaction, success: @escaping (Bool)->())
}

class TransactionDataRepository: TransactionRepository {
    
    private let dataSource: TransactionsDataSource
    
    init(dataSource: TransactionsDataSource) {
        self.dataSource = dataSource
    }
    
    func getTransaction(success: @escaping ([Transaction]) -> ()) {
        dataSource.getTransactions(success: success)
    }
}

class AddTransactionDataRespository: AddTransactionRespository {
    
    private let dataSource: AddTransactionDataSource
    
    init(dataSource: AddTransactionDataSource) {
        self.dataSource = dataSource
    }
    
    func addTransaction(document: Transaction, success: @escaping (Bool) -> ()) {
        dataSource.addTransaction(document: document, success: success)
    }
}
