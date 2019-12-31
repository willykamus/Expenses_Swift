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
    
    private let root: UINavigationController
    private let presenter: TransactionPresenter
    
    init(withNavigationController root:UINavigationController, presenter: TransactionPresenter) {
        self.root = root
        self.presenter = presenter
    }
    
    func start() {
        let vc = TransactionViewController()
        let viewModel = TransactionViewModel(presenter: self.presenter)
        vc.viewModel = viewModel
        root.navigationBar.isTranslucent = false
        root.navigationBar.barTintColor = UIColor.systemGray6
        root.navigationBar.shadowImage = UIImage()
        root.pushViewController(vc, animated: true)
    }
 
}
