//
//  DisplayTransactionInformationView.swift
//  Expenses
//
//  Created by William Ching on 2019-12-11.
//  Copyright © 2019 William Ching. All rights reserved.
//

import Foundation
import UIKit

class TransactionInfoView: UIView {
    
    var categoryButton = DropDownButton(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
    
    var cardContainer = CardViewContainer(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    
    var cardTitle: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        return label
    }()
    
    let ribbon = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    
    var amountTitle: UILabel = {
        let label = UILabel()
        label.text = "Amount"
        label.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        return label
    }()
    
    var amountTextField: UITextField = {
        let textview = UITextField()
        textview.borderStyle = .none
        textview.text = "0.00$"
        textview.font = UIFont.systemFont(ofSize: 24, weight: .medium)
        textview.textColor = .white
        return textview
    }()
    
    var categoryLabel: UILabel = {
        let label = UILabel()
        label.text = "Category"
        label.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .clear
        
        cardTitle.translatesAutoresizingMaskIntoConstraints = false
        cardContainer.translatesAutoresizingMaskIntoConstraints = false
        categoryButton.translatesAutoresizingMaskIntoConstraints = false
        amountTitle.translatesAutoresizingMaskIntoConstraints = false
        amountTextField.translatesAutoresizingMaskIntoConstraints = false
        
        
        self.addSubview(cardTitle)
        setupCardTitleConstraints()
        
        self.addSubview(cardContainer)
        setupCardViewConstraints()

        cardContainer.addSubview(amountTextField)
//        cardContainer.addSubview(amountTitle)
        
        setupAmountTextField()
        
        cardContainer.addSubview(categoryButton)
        setupButtonConstraints()
        
//        categoryButton.translatesAutoresizingMaskIntoConstraints = false
        setupAmountTextField()
//        setupButtonConstraints()
        
    }

    required init?(coder aDecoder: NSCoder) {
      super.init(coder: aDecoder)
    }
    
    private func setupCardTitleConstraints() {
        cardTitle.topAnchor.constraint(equalTo: self.topAnchor, constant: 16.0).isActive = true
        cardTitle.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16.0).isActive = true
    }
    
    private func setupCardViewConstraints() {
        cardContainer.topAnchor.constraint(equalTo: cardTitle.bottomAnchor, constant: 8.0).isActive = true
        cardContainer.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        cardContainer.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16.0).isActive = true
        cardContainer.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16.0).isActive = true
        
        ribbon.backgroundColor = .red
        ribbon.translatesAutoresizingMaskIntoConstraints = false
        ribbon.layer.cornerRadius = 16
        ribbon.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
        cardContainer.addSubview(ribbon)
        
        ribbon.topAnchor.constraint(equalTo: cardContainer.topAnchor, constant: 0).isActive = true
        ribbon.leadingAnchor.constraint(equalTo: cardContainer.leadingAnchor, constant: 0).isActive = true
        ribbon.trailingAnchor.constraint(equalTo: cardContainer.trailingAnchor, constant: 0).isActive = true
        ribbon.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        ribbon.addSubview(amountTextField)
        
        setupAmountTextField()
        
    }
    private func setupButtonConstraints() {
        categoryButton.topAnchor.constraint(equalTo: ribbon.bottomAnchor, constant: 8).isActive = true
        categoryButton.trailingAnchor.constraint(equalTo: cardContainer.trailingAnchor, constant: -8).isActive = true
        categoryButton.leadingAnchor.constraint(equalTo: cardContainer.leadingAnchor, constant: 8).isActive = true
    }
    private func setupAmountTextField() {
//        amountTitle.topAnchor.constraint(equalTo: cardContainer.topAnchor, constant: 16).isActive = true
//        amountTitle.leadingAnchor.constraint(equalTo: cardContainer.leadingAnchor, constant: 16).isActive = true
        amountTextField.bottomAnchor.constraint(equalTo: ribbon.bottomAnchor, constant: -2).isActive = true
        amountTextField.trailingAnchor.constraint(equalTo: ribbon.trailingAnchor, constant: -16).isActive = true
    }
    
}
