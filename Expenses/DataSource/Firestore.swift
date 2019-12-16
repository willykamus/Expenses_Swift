//
//  Firestore.swift
//  Expenses
//
//  Created by William Ching on 2019-12-06.
//  Copyright © 2019 William Ching. All rights reserved.
//

import Foundation
import Firebase

protocol TransactionDataSource {
    
    func getTransaction(success: @escaping ([Transaction])->(), failure: @escaping (Error)->())
    func addTransaction(document:Transaction, success: @escaping (Bool)->(), failure: @escaping (Error)->())
    
}

class FirestoreNetwork {

    private var db: Firestore
    
    init() {
        self.db = Firestore.firestore()
    }
    
    func getCollection<T:Codable>(name: FirestoreCollection, object objectType: T.Type, success: @escaping([T])->Void, failure: @escaping(Error)->Void) {

        db.collection(name.rawValue).getDocuments { (response, error) in
            if let error = error {
                failure(error)
                return
            }
            if let response = response {
                var documents = [T]()
                let decoder = JSONDecoder()
                for document in response.documents {
                    var data = document.data()
                    data["id"] = document.documentID
                    if let json = try? JSONSerialization.data(withJSONObject: data, options: []) {
                        if let doc = try? decoder.decode(T.self, from: json) {
                            documents.append(doc)
                        }
                    }
                }
                success(documents)
            }
        }
    }
    
    func addDocument(name: FirestoreCollection, data dataObject:Transaction, success: @escaping(Bool)->Void, failure: @escaping(Error)->Void) {
        let dictionary = dataObject.asDictionary()
        db.collection(name.rawValue).addDocument(data: dictionary) { (error) in
            if let error = error {
                print(error.localizedDescription)
                failure(error)
            } else {
                success(true)
            }
        }
    }
}

