//
//  PetTableViewCell.swift
//  ExampleStoryBoard
//
//  Created by Hoàng Khánh on 4/6/18.
//  Copyright © 2018 Hoàng Khánh. All rights reserved.
//

import UIKit

class PetTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    
    var pet:Pet! {
        didSet {
            lblName.text = pet.Name
            lblTitle.text = pet.Detail
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
