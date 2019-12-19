//
//  DisplayTransactionsUseCase.swift
//  Expenses
//
//  Created by William Ching on 2019-12-18.
//  Copyright © 2019 William Ching. All rights reserved.
//

import Foundation

class DisplayTransactionsUseCase {
    
    let repository: TransactionRepository
    
    init(repository: TransactionRepository) {
        self.repository = repository
    }
    
    func execute(success: @escaping ([Transaction])->()) {
        repository.getTransaction(success: success)
    }
    
}
