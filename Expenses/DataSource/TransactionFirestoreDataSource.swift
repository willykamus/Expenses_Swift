//
//  TransactionFirestoreDataSource.swift
//  Expenses
//
//  Created by William Ching on 2019-12-15.
//  Copyright © 2019 William Ching. All rights reserved.
//

import Foundation

class TransactionFirestoreDataSource: FirestoreNetwork, TransactionsDataSource {
    
    func getTransactions(success: @escaping ([Transaction]) -> ()) {
        self.getCollection(name: FirestoreCollection.transactions, object: Transaction.self, success: { (data) in
            success(data)
        })
    }
}

class AddTransactionFirestoreDataSource: FirestoreNetwork, AddTransactionDataSource {
    
    func addTransaction(document: Transaction, success: @escaping (Bool) -> ()) {
        self.addDocument(name: FirestoreCollection.transactions, data: document, success: { (result) in
            success(result)
        })
    }
}
