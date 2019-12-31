//
//  ViewController.swift
//  Expenses
//
//  Created by William Ching on 2019-12-02.
//  Copyright © 2019 William Ching. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let tableview = UITableView()
    
    var viewModel: TransactionsViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.systemGray6
        tableview.delegate = self
        tableview.dataSource = self
        tableview.rowHeight = UITableView.automaticDimension
        tableview.register(UINib(nibName: "TransactionTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        tableview.separatorStyle = .none
        viewModel?.fetchTransaction {
            self.tableview.reloadData()
        }
        // Do any additional setup after loading the view.
    }
    
    override func loadView() {
        view = tableview
    }
    
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.transactionsAmount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? TransactionTableViewCell {
            cell.presenter = viewModel.transactionPresenter(atIndexPath: indexPath)
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        viewModel.cellTapped(indexPath: indexPath)
    }
    
    
}

