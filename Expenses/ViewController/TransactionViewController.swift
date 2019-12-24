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
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.view.backgroundColor = .white
        // Do any additional setup after loading the view.
    }
    
    override func loadView() {
        self.view = viewModel?.view
    }

}
