//
//  LabelExpandTableViewCell.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 14/04/23.
//

import UIKit

class LabelExpandTableViewCell: UITableViewCell {
    
    @IBOutlet weak var btnOfData: UIButton!
    @IBOutlet weak var lblOfData: UILabel!
    var expandLabel: (() -> ())?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    @IBAction func btnAction(_ sender: UIButton) {
        expandLabel?()
    }
}
