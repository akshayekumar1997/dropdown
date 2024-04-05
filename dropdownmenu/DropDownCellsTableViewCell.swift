//
//  DropDownCellsTableViewCell.swift
//  dropdownmenu
//
//  Created by SUMSKAR PC on 05/04/24.
//

import UIKit
import DropDown
class DropDownCellsTableViewCell: DropDownCell {

    @IBOutlet weak var myImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        myImageView.contentMode = .scaleAspectFit
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
