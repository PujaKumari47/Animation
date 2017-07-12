//
//  menuTableViewCell.swift
//  Animationpoc
//
//  Created by Puja Kumari on 7/12/17.
//  Copyright © 2017 nineleaps. All rights reserved.
//

import UIKit

class menuTableViewCell: UITableViewCell {
    @IBOutlet weak var menuTitle: UILabel!
    
    @IBOutlet weak var menuImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
