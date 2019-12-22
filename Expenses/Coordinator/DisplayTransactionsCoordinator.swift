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

protocol TableViewCoordinator: Coordinator {
    func cellTaped(indexPath: IndexPath)
}

class DisplayTransactionsCoordinator: TableViewCoordinator {
    
    var window: UIWindow
    var rootVC: UINavigationController
    
    init(window:UIWindow, controller: UINavigationController) {
        self.window = window
        self.rootVC = controller
    }
    
    func start() {
        window.rootViewController = rootVC
        let vc = ViewController() 
        vc.viewModel = TransactionsViewModel(useCase: GetTransactionUseCase(repository: TransactionDataRepository(dataSource: TransactionFirestoreDataSource())), coordinator: self)
        self.rootVC.pushViewController(vc, animated: true)
        self.window.makeKeyAndVisible()
    }
    
    func cellTaped(indexPath: IndexPath) {
        let vc = TransactionViewController()
        self.rootVC.pushViewController(vc, animated: true)
    }

}
