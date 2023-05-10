//
//  StaticTableViewCell.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 05/05/23.
//

import UIKit

class StaticTableViewCell: UITableViewCell {

    @IBOutlet weak var lblName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
