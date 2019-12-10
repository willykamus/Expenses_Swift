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
    
    var transaction: TransactionPresenter! {
        didSet {
            mainLabel.text = transaction.transactionAmount()
            subtitleLabel.text = transaction.transactionCategory()
            detailLabel.text = transaction.transactionAmount()
        }
    }
    
}
