//
//  HeaderandfooterTVCellTableViewCell.swift
//  HeaderandFooterView
//
//  Created by Codebele 07 on 20/04/2022.
//

import UIKit

class HeaderandfooterTVCellTableViewCell: UITableViewCell {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
