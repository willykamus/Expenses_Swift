//
//  TransactionTableViewCell.swift
//  Expenses
//
//  Created by William Ching on 2019-12-04.
//  Copyright © 2019 William Ching. All rights reserved.
//

import UIKit

class TransactionTableViewCell: UITableViewCell {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    
    var presenter: TransactionPresenter! {
        didSet {
            mainLabel.text = presenter.transactionDescription()
            subtitleLabel.text = presenter.transactionCategory()
            detailLabel.text = presenter.transactionAmount()! + "$"
            setStyle()
        }
    }

    private func setStyle() {
        subtitleLabel.textColor = UIColor.lightGray
        detailLabel.textColor = UIColor.darkGray

        guard let type = presenter.getType() else {
            return
        }
        switch type{
        case .expense:
            detailLabel.textColor = UIColor.red
        case .income:
            detailLabel.textColor = UIColor.green
        }
        
    }
    
}
