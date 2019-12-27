//
//  TransactionViewController.swift
//  Expenses
//
//  Created by William Ching on 2019-12-09.
//  Copyright © 2019 William Ching. All rights reserved.
//

import UIKit

class TransactionViewController: UIViewController {
    
    var viewModel:TransactionViewModel?
    
    var transactionView: TransactionInfoView = TransactionInfoView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.systemGray6
        print("I am here")
        self.view.addSubview(transactionView)
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        setupConstraints()
    }
    
    func setupConstraints() {
        print(self.view.safeAreaLayoutGuide)
        transactionView.translatesAutoresizingMaskIntoConstraints = false
        transactionView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        transactionView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 0).isActive = true
        transactionView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: 0).isActive = true
        transactionView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        
    }
    
    
    
    
}
