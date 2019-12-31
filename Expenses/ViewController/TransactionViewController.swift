//
//  TransactionViewController.swift
//  Expenses
//
//  Created by William Ching on 2019-12-09.
//  Copyright © 2019 William Ching. All rights reserved.
//

import UIKit

class TransactionViewController: UIViewController {
    
    var viewModel:TransactionViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.systemGray6
        self.view.addSubview(viewModel.view)
        self.navigationController?.navigationBar.isTranslucent = false
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        setupConstraints()
    }
    
    func setupConstraints() {

        viewModel.view.translatesAutoresizingMaskIntoConstraints = false
        viewModel.view.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        viewModel.view.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 0).isActive = true
        viewModel.view.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: 0).isActive = true
        viewModel.view.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        
    }
    
    
    
    
}
