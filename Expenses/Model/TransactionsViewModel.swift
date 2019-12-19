//
//  TransactionsViewModel.swift
//  Expenses
//
//  Created by William Ching on 2019-12-18.
//  Copyright © 2019 William Ching. All rights reserved.
//

import Foundation

class TransactionsViewModel {
    
    private let useCase: GetTransactionUseCase
    private var transactions = [TransactionPresenter]()
    private var coordinator: AppCoordinator
    
    init(useCase: GetTransactionUseCase, coordinator: AppCoordinator) {
        self.useCase = useCase
        self.coordinator = coordinator
    }
    
    func fetchTransaction(completion: @escaping ()->()) {
        useCase.getTransactions { (transactions) in
            let transactionPresenters = transactions.map { TransactionPresenter(withTransaction: $0)}
            self.transactions.removeAll()
            self.transactions = transactionPresenters
            completion()
        }
    }
    
    func cellTapped() {
        coordinator.cellTapped()
    }
    
    func transactionsAmount() -> Int {
        return self.transactions.count
    }
    
    func transactionPresenter(atIndexPath indexPath: IndexPath) -> TransactionPresenter {
        return self.transactions[indexPath.row]
    }
    
    
}
