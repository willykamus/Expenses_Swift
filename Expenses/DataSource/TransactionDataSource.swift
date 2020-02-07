//
//  TransactionFirestoreDataSource.swift
//  Expenses
//
//  Created by William Ching on 2019-12-15.
//  Copyright © 2019 William Ching. All rights reserved.
//

import Foundation

protocol TransactionsDataSource {
    func getTransactions(success: @escaping ([Transaction])->())
    func addTransaction(document:Transaction, success: @escaping (Bool)->())
}

class TransactionFirestoreDataSource: FirestoreNetwork, TransactionsDataSource {
    
    func addTransaction(document: Transaction, success: @escaping (Bool) -> ()) {
        self.addDocument(name: FirestoreCollection.transactions, data: document, success: { (result) in
            success(result)
        })
    }

    func getTransactions(success: @escaping ([Transaction]) -> ()) {
        self.getCollection(name: FirestoreCollection.transactions, object: Transaction.self, success: { (data) in
            success(data)
        })
    }
}
