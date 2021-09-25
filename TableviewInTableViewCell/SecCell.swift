//
//  SecCell.swift
//  TableviewInTableViewCell
//
//  Created by HT-Admin on 17/01/20.
//  Copyright © 2020 HT-Admin. All rights reserved.
//

import UIKit

class SecCell: UITableViewCell {
    
    
    @IBOutlet weak var lblSec: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
