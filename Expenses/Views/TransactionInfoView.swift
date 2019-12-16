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
    
    var verticalStack: UIStackView = UIStackView()
    
    var amountTextField:UITextField = {
        let textField = UITextField()
        textField.borderStyle = .none
        textField.textAlignment = .right
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    var categoryLabel:UILabel = {
        let label = UILabel()
        label.text = "Category"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var categoryTextField:UITextField = {
        let textField = UITextField()
        textField.borderStyle = .none
        textField.textAlignment = .right
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        self.backgroundColor = UIColor.green
        self.addSubview(verticalStack)
        configureVerticalStack()
        verticalStack.addArrangedSubview(categoryLabel)
    }

    required init?(coder aDecoder: NSCoder) {
      super.init(coder: aDecoder)
    }
    
    func configureVerticalStack() {
        
        verticalStack.axis = .vertical
        verticalStack.alignment = .center
        verticalStack.distribution = .equalSpacing
        verticalStack.backgroundColor = UIColor.red
        
        verticalStack.translatesAutoresizingMaskIntoConstraints = false
        verticalStack.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        verticalStack.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        verticalStack.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        verticalStack.heightAnchor.constraint(equalToConstant: 100.0).isActive = true
    }
}
