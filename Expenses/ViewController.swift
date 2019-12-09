//
//  ViewController.swift
//  Expenses
//
//  Created by William Ching on 2019-12-02.
//  Copyright © 2019 William Ching. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var data = [Transaction]()
    
    let tran = Transaction()

    let tableview = UITableView()
    
    var coordinator: AppCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        tableview.delegate = self
        tableview.dataSource = self
        tableview.rowHeight = UITableView.automaticDimension
        tableview.register(UINib(nibName: "TransactionTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        // Do any additional setup after loading the view.
    }
    
    override func loadView() {
        view = tableview
    }
    
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let transaction = data[indexPath.row]
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? TransactionTableViewCell {
            cell.displayTransaction(transaction: transaction)
            return cell
        }
        return UITableViewCell()
    }
    
    
}

