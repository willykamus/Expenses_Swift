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
    @IBOutlet weak var mainStack: UIStackView!
    @IBOutlet weak var containerView: UIView!
    
    var presenter: TransactionPresenter! {
        didSet {
            self.selectionStyle = .none
            mainLabel.text = presenter.transactionDescription()
            subtitleLabel.text = presenter.transactionCategory()
            detailLabel.text = presenter.transactionAmount()! + "$"
            setStyle()
            createCard()
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
    
    private func createCard() {
        containerView.backgroundColor = .white
        containerView.layer.cornerRadius = 10.0
        
        containerView.layer.shadowColor = UIColor.gray.cgColor
        containerView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        containerView.layer.shadowRadius = 3.0
        containerView.layer.shadowOpacity = 0.3
        
    }
    
}
