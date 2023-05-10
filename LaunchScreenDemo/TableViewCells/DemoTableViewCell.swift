//
//  DemoTableViewCell.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 13/04/23.
//

import UIKit

class DemoTableViewCell: UITableViewCell {

    @IBOutlet weak var dataLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
