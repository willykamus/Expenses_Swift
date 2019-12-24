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
    
    var transactionView: TransactionInfoView = TransactionInfoView(frame: CGRect(x: 0, y: 100, width: 300, height: 300))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.systemGray6
        print("I am here")
        self.view.addSubview(transactionView)
        // Do any additional setup after loading the view.
    }
    
    
    
}
