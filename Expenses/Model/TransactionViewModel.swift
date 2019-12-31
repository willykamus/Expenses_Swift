//
//  DisplayTransactionViewModel.swift
//  Expenses
//
//  Created by William Ching on 2019-12-22.
//  Copyright © 2019 William Ching. All rights reserved.
//

import Foundation

class TransactionViewModel {
    
    let presenter: TransactionPresenter
    let view: TransactionInfoView
    
    init(presenter: TransactionPresenter) {
        self.presenter = presenter
        self.view = TransactionInfoView()
        setCardTitleText()
    }
    
    private func setCardTitleText() {
        let text = presenter.transactionDescription()
        view.cardTitle.text = text
    }
    
    

}
