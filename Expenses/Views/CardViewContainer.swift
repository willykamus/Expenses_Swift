//
//  CardViewContainer.swift
//  Expenses
//
//  Created by William Ching on 2019-12-23.
//  Copyright © 2019 William Ching. All rights reserved.
//

import Foundation
import UIKit

class CardViewContainer: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        self.translatesAutoresizingMaskIntoConstraints = false
        setupBorders()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupBorders() {
        self.layer.cornerRadius = 16
        
    }
    
}

