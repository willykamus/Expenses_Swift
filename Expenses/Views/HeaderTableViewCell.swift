//
//  HeaderTableViewCell.swift
//  Expenses
//
//  Created by William Ching on 2019-12-18.
//  Copyright © 2019 William Ching. All rights reserved.
//

import UIKit

class HeaderTableViewCell: UITableViewCell {

    @IBOutlet weak var headerTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func headerTitle(title:String) {
        self.headerTitle.text = title
    }
    
}
