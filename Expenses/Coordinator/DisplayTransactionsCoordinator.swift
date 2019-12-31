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

protocol TableViewAction: class {
    func cellTaped(presenter: TransactionPresenter)
}

class DisplayTransactionsCoordinator: Coordinator {
    
    var window: UIWindow
    var rootVC: UINavigationController
    
    init(window:UIWindow, controller: UINavigationController) {
        self.window = window
        self.rootVC = controller
    }
    
    func start() {
        window.rootViewController = rootVC
        let vc = ViewController()
        let viewModel = TransactionsViewModel(useCase: GetTransactionUseCase(repository: TransactionDataRepository(dataSource: TransactionFirestoreDataSource())))
        viewModel.delegate = self
        vc.viewModel = viewModel
        self.rootVC.pushViewController(vc, animated: true)
        self.window.makeKeyAndVisible()
    }
}

extension DisplayTransactionsCoordinator: TableViewAction {
    func cellTaped(presenter: TransactionPresenter) {
        let coordinator = DisplayTransactionCoordinator(withNavigationController: self.rootVC, presenter: presenter)
        coordinator.start()
    }
}
