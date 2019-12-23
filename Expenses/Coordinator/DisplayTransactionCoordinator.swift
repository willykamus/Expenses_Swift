//
//  DisplayTransactionCoordinator.swift
//  Expenses
//
//  Created by William Ching on 2019-12-22.
//  Copyright © 2019 William Ching. All rights reserved.
//

import Foundation
import UIKit

class DisplayTransactionCoordinator: Coordinator {
    
    let root: UINavigationController
    let viewModel:TransactionViewModel
    
    init(withNavigationController root:UINavigationController, andViewModel viewModel: TransactionViewModel) {
        self.root = root
        self.viewModel = viewModel
    }
    
    func start() {
        let vc = TransactionViewController()
        vc.viewModel = self.viewModel
        root.pushViewController(vc, animated: true)
    }
 
}
