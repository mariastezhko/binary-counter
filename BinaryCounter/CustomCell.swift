//
//  CustomCell.swift
//  BinaryCounter
//
//  Created by Maria Stezhko on 3/19/18.
//  Copyright © 2018 Maria Stezhko. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var rightButton: UIButton!
    
    @IBAction func rightButtonPressed(_ sender: UIButton) {
    }
    
    
    @IBAction func leftButtonPressed(_ sender: UIButton) {
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
