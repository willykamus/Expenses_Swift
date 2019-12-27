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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .clear
//        self.translatesAutoresizingMaskIntoConstraints = false
        
        cardContainer.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(cardContainer)
        setupCardViewConstraints()
        cardContainer.addSubview(categoryButton)
        
        categoryButton.translatesAutoresizingMaskIntoConstraints = false
        setupButtonConstraints()
        
    }

    required init?(coder aDecoder: NSCoder) {
      super.init(coder: aDecoder)
    }
    
    private func setupCardViewConstraints() {
        cardContainer.topAnchor.constraint(equalTo: self.topAnchor, constant: 16.0).isActive = true
        cardContainer.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        cardContainer.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16.0).isActive = true
        cardContainer.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16.0).isActive = true
    }
    private func setupButtonConstraints() {
        categoryButton.setTitle("Hello", for: .normal)
        categoryButton.centerXAnchor.constraint(equalTo: cardContainer.centerXAnchor).isActive = true
        categoryButton.centerYAnchor.constraint(equalTo: cardContainer.centerYAnchor).isActive = true
    }
    
}
