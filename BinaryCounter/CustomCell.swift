//
//  CustomCell.swift
//  BinaryCounter
//
//  Created by Maria Stezhko on 3/19/18.
//  Copyright © 2018 Maria Stezhko. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    
    weak var delegate: CustomCellDelegate?
    var indexPath: NSIndexPath?

    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var rightButton: UIButton!
    
    @IBAction func rightButtonPressed(_ sender: UIButton) {
        delegate?.plusNumber(at: indexPath)
    }
    
    
    @IBAction func leftButtonPressed(_ sender: UIButton) {
        print("Calling delegate \(indexPath)")
        delegate?.minusNumber(at: indexPath)
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
