//
//  TransactionFirestoreDataSource.swift
//  Expenses
//
//  Created by William Ching on 2019-12-15.
//  Copyright © 2019 William Ching. All rights reserved.
//

import Foundation

class TransactionFirestoreDataSource: FirestoreNetwork, TransactionDataSource {
    
    func getTransaction(success: @escaping ([Transaction]) -> (), failure: @escaping (Error) -> ()) {
        self.getCollection(name: FirestoreCollection.transactions, object: Transaction.self, success: { (data) in
            success(data)
        }) { (error) in
            failure(error)
        }
    }
    
    func addTransaction(document: Transaction, success: @escaping (Bool) -> (), failure: @escaping (Error) -> ()) {
        self.addDocument(name: FirestoreCollection.transactions, data: document, success: { (result) in
            success(result)
        }) { (error) in
            failure(error)
        }
    }
    
}
