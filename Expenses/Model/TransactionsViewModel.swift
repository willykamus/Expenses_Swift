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
    weak var delegate: TableViewAction?
    
    init(useCase: GetTransactionUseCase) {
        self.useCase = useCase
    }
    
    func fetchTransaction(completion: @escaping ()->()) {
        useCase.getTransactions { (transactions) in
            let transactionPresenters = transactions.map { TransactionPresenter(withTransaction: $0)}
            self.transactions.removeAll()
            self.transactions = transactionPresenters
            completion()
        }
    }
    
    func cellTapped(indexPath: IndexPath) {
        delegate?.cellTaped(presenter: transactionPresenter(atIndexPath: indexPath))
    }
    
    func transactionsAmount() -> Int {
        return self.transactions.count
    }
    
    func transactionPresenter(atIndexPath indexPath: IndexPath) -> TransactionPresenter {
        return self.transactions[indexPath.row]
    }
    
    
}
