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
    var transactionRepository: TransactionRepository
    
    init(window:UIWindow, controller: UINavigationController) {
        self.window = window
        self.rootVC = controller
        let dataSource = TransactionFirestoreDataSource()
        let repository = TransactionDataRepository(dataSource: dataSource)
        self.transactionRepository = repository
        
    }
    
    func start() {
        window.rootViewController = rootVC
        transactionRepository.getTransaction(success: { (data) in
            let vc = ViewController()
            vc.data = self.mapTransactions(data: data)
            vc.coordinator = self
            self.rootVC.pushViewController(vc, animated: true)
            self.window.makeKeyAndVisible()
        }) { (error) in
            print(error.localizedDescription)
        }
        
    }
    
    func mapTransactions(data: [Transaction]) -> [TransactionPresenter] {
        data.map { return TransactionPresenter(withTransaction: $0)}
    }
    
    func cellTapped() {
        let vc = TransactionViewController()
        self.rootVC.pushViewController(vc, animated: true)
    }

}
