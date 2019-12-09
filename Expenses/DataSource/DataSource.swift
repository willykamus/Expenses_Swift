//
//  DataSource.swift
//  Expenses
//
//  Created by William Ching on 2019-12-06.
//  Copyright © 2019 William Ching. All rights reserved.
//

import Foundation

protocol DataSource {
    
    func getTransaction(success: @escaping ([Transaction])->(), failure: @escaping (Error)->())
    func addTransaction(document:Transaction, success: @escaping (Bool)->(), failure: @escaping (Error)->())
    
}

class Network: DataSource {
    
    var dataSource: DataSource
    
    init(dataSource: DataSource) {
        self.dataSource = dataSource
    }
    
    func getTransaction(success: @escaping ([Transaction]) -> (), failure: @escaping (Error) -> ()) {
        dataSource.getTransaction(success: success, failure: failure)
    }
    
    func addTransaction(document: Transaction, success: @escaping (Bool) -> (), failure: @escaping (Error) -> ()) {
        dataSource.addTransaction(document: document, success: success, failure: failure)
    }
    
}
