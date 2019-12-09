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
    
    func displayTransaction(transaction: Transaction) {
        
        mainLabel.text = transaction.category?.rawValue ?? "None"
        subtitleLabel.text = transaction.transactionType?.rawValue ?? "None"
        detailLabel.text = String(transaction.amount ?? 0.0)
        
    }
}
