//
//  CompanyTableCellTableViewCell.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 12/04/23.
//

import UIKit

class CompanyTableCellTableViewCell: UITableViewCell {

    
    @IBOutlet weak var imgSelect: UIView!
    @IBOutlet weak var cmpName: UILabel!
    @IBOutlet weak var imgLogo: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imgSelect.layer.cornerRadius = imgSelect.frame.size.height/2
    }
    
    func check(data: FindJobModel) {
        imgLogo.image = UIImage(named: data.imageName ?? "")
        cmpName.text = data.companyName
        if data.isSelected {
            imgSelect.backgroundColor = .red
        } else {
            imgSelect.backgroundColor = .gray
        }
    }
}
