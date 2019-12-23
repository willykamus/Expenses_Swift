//
//  DisplayTransactionDetailsView.swift
//  Expenses
//
//  Created by William Ching on 2019-12-21.
//  Copyright © 2019 William Ching. All rights reserved.
//

import UIKit

class DisplayTransactionDetailsView: UIView, UITableViewDelegate, UITableViewDataSource {

    
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var currencyLabel: UILabel!
    @IBOutlet weak var categoryButton: UIButton!
    @IBOutlet weak var categoryTableView: UITableView!
    @IBOutlet weak var descriptionTextField: UITextField!
    
    var presenter: TransactionPresenter! {
        didSet {
            self.amountTextField.text = self.presenter.transactionAmount()
            self.currencyLabel.text = "CAD"
            self.categoryButton.titleLabel?.text = presenter.transactionCategory()
            self.descriptionTextField.text = presenter.transactionDescription()
        }
    }
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        self.containerView.layer.cornerRadius = 8.0
        self.containerView.backgroundColor = .white
        self.containerView.layer.shadowColor = UIColor.gray.cgColor
        self.containerView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        self.containerView.layer.shadowRadius = 3.0
        self.containerView.layer.shadowOpacity = 0.3
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
}
