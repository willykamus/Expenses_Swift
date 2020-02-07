//
//  DataSource.swift
//  Expenses
//
//  Created by William Ching on 2019-12-06.
//  Copyright © 2019 William Ching. All rights reserved.
//

import Foundation

protocol TransactionRepository {
    var dataSource: TransactionsDataSource { get }
    func getTransaction(success: @escaping ([Transaction])->())
    func addTransaction(document:Transaction, success: @escaping (Bool)->())
}

class TransactionDataRepository: TransactionRepository {
    
    var dataSource: TransactionsDataSource

    init(dataSource: TransactionsDataSource) {
        self.dataSource = dataSource
    }
    
    func getTransaction(success: @escaping ([Transaction]) -> ()) {
        dataSource.getTransactions(success: success)
    }
    
    func addTransaction(document: Transaction, success: @escaping (Bool) -> ()) {
        dataSource.addTransaction(document: document, success: success)
    }
    
}
