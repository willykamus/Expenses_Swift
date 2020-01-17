//
//  DisplayTransactionViewModel.swift
//  Expenses
//
//  Created by William Ching on 2019-12-22.
//  Copyright © 2019 William Ching. All rights reserved.
//

import Foundation

class TransactionViewModel {
    
    var presenter: TransactionPresenter {
        didSet {
            setCardTitleText()
            setAmountText()
        }
    }
    let view: TransactionInfoView
    
    init(presenter: TransactionPresenter) {
        self.presenter = presenter
        self.view = TransactionInfoView()
        setCardTitleText()
        setAmountText()
    }
    
    private func setCardTitleText() {
        view.cardTitle.text = presenter.transactionDescription()
    }
    
    private func setAmountText() {
        view.amountTextField.text = presenter.transactionAmount()
    }
    
    

}
