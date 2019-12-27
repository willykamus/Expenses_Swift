//
//  DropDownButton.swift
//  Expenses
//
//  Created by William Ching on 2019-12-23.
//  Copyright © 2019 William Ching. All rights reserved.
//

import Foundation
import UIKit

class DropDownButton: UIButton {
    
    var dropView:DropDownView = {
        let view = DropDownView(frame: CGRect.init(x: 0, y: 0, width: 0, height: 0))
        return view
    }()
    
    var height = NSLayoutConstraint()
    var isOpen = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(dropView)
        
        dropView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        dropView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        dropView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        
        height = dropView.heightAnchor.constraint(equalToConstant: 0)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if isOpen {
            openDropDownView()
        } else {
            closeDropDownView()
        }
    }
    
    private func openDropDownView() {
        isOpen = true
        NSLayoutConstraint.deactivate([self.height])
        self.height.constant = 150
        NSLayoutConstraint.activate([self.height])
        animateOpening()
    }
    
    private func animateOpening() {
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
            self.dropView.layoutIfNeeded()
            self.dropView.center.y += self.dropView.frame.height / 2
        }, completion: nil)
    }
    
    private func closeDropDownView() {
        isOpen = false
        NSLayoutConstraint.deactivate([self.height])
        self.height.constant = 0
        NSLayoutConstraint.activate([self.height])
        animateClosing()
    }
    
    private func animateClosing() {
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
            self.dropView.center.y -= self.dropView.frame.height / 2
            self.dropView.layoutIfNeeded()
        }, completion: nil)
    }

}

class DropDownView: UIView, UITableViewDelegate, UITableViewDataSource {
    
    var categories = ["Groceries","Rent","Credit Card"]
    
    var tableView = UITableView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
        setupConstrainsts()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupConstrainsts() {
        tableView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = categories[indexPath.row]
        return cell
    }
  
}
