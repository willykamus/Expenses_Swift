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
    
    init(withNavigationController root:UINavigationController) {
        self.root = root
    }
    
    func start() {
        let vc = TransactionViewController()
        root.pushViewController(vc, animated: true)
    }
 
}
