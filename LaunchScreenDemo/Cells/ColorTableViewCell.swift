//
//  ColorTableViewCell.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 13/04/23.
//

import UIKit

class ColorTableViewCell: UITableViewCell {

    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var btnSelect: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        btnSelect.layer.cornerRadius = btnSelect.frame.size.height/2
        btnSelect.layer.borderColor = UIColor.gray.cgColor
        btnSelect.layer.borderWidth = 1
    }
}
