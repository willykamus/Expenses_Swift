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
    
    var categoryButton = DropDownButton()
    
    var cardContainer = CardViewContainer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        cardContainer.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(cardContainer)
        categoryButton.translatesAutoresizingMaskIntoConstraints = false
        setupCardViewConstraints()
        
        cardContainer.addSubview(categoryButton)
        setupButtonConstraints()
        
    }

    required init?(coder aDecoder: NSCoder) {
      super.init(coder: aDecoder)
    }
    
    private func setupCardViewConstraints() {
        cardContainer.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        cardContainer.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        cardContainer.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        cardContainer.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
    }
    private func setupButtonConstraints() {
        categoryButton.topAnchor.constraint(equalTo: cardContainer.topAnchor).isActive = true
        categoryButton.bottomAnchor.constraint(equalTo: cardContainer.bottomAnchor).isActive = true
        categoryButton.leadingAnchor.constraint(equalTo: cardContainer.leadingAnchor).isActive = true
        categoryButton.trailingAnchor.constraint(equalTo: cardContainer.trailingAnchor).isActive = true
    }
    
}
