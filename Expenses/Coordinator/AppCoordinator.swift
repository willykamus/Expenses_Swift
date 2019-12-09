//
//  AppCoordinator.swift
//  Expenses
//
//  Created by William Ching on 2019-12-02.
//  Copyright © 2019 William Ching. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator {
    func start()
}

class AppCoordinator: Coordinator {
    
    var window: UIWindow
    var rootVC: UINavigationController
    var transactionDataSource: DataSource
    
    init(window:UIWindow, controller: UINavigationController) {
        self.window = window
        self.rootVC = controller
        self.transactionDataSource = FirestoreNetwork()
        
    }
    
    func start() {
        window.rootViewController = rootVC
        transactionDataSource.getTransaction(success: { (data) in
            let vc = ViewController()
            vc.data = data
            vc.coordinator = self
            self.rootVC.pushViewController(vc, animated: true)
            self.window.makeKeyAndVisible()
            self.test()
        }) { (error) in
            print(error.localizedDescription)
        }
        
    }
    
    func test() {
        let transaction = Transaction()
        transaction.transactionType = TransactionType.income
        transaction.amount = 10000
        transaction.category = Category.salary
        transaction.description = "Test"
        
        transactionDataSource.addTransaction(document: transaction, success: { (success) in
            print("Added")
        }) { (error) in
            print("ERROR ERROR")
        }
    }
}
