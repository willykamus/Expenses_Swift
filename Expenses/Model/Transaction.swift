//
//  Transaction.swift
//  Expenses
//
//  Created by William Ching on 2019-12-04.
//  Copyright © 2019 William Ching. All rights reserved.
//

import Foundation

enum TransactionType: String, Codable {
    case expense
    case income
    
}

enum FirestoreCollection: String, Codable {
    case transactions
}

enum Category: String, Codable {

    case groceries
    case entertainment
    case rent
    case education
    case salary
}

class Transaction: Codable {
    
    var category: Category?
    var amount: Double?
    var description: String?
    var transactionType: TransactionType?
    
    func asDictionary() -> [String:Any] {
        
        if let data = try? JSONEncoder().encode(self) {
            
            guard let dictionary = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: Any] else { return [:] }
            
            return dictionary
        }
        
        return [:]
    }
    
}
