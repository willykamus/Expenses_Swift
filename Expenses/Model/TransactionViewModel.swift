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
    let coordinator: Coordinator
    
    init(presenter: TransactionPresenter, coordinator: Coordinator) {
        self.presenter = presenter
        self.coordinator = coordinator
    }

}
