//
//  CustomTableViewCell.swift
//  customCell2
//
//  Created by Nishanthan Baskaran on 3/7/20.
//  Copyright © 2020 Nishanthan Baskaran. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var ll2: UILabel!
    @IBOutlet weak var lbl3: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
