//
//  DisplayTransactionViewModel.swift
//  Expenses
//
//  Created by William Ching on 2019-12-22.
//  Copyright © 2019 William Ching. All rights reserved.
//

import Foundation
import UIKit

class TransactionViewModel {
    
    let presenter: TransactionPresenter
    let view: DisplayTransactionDetailsView
    let coordinator: Coordinator
    
    init(withTransaction presenter: TransactionPresenter, coordinator: Coordinator) {
        self.presenter = presenter
        self.view = DisplayTransactionDetailsView()
        self.coordinator = coordinator
        setTableView()
    }
    
    private func setTableView() {
        view.categoryTableView.delegate = self
        view.categoryTableView.dataSource = self
    }
}

extension TransactionViewModel:  {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
}
