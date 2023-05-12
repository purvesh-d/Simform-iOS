//
//  PatientTableViewCell.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 12/05/23.
//

import UIKit

class PatientTableViewCell: UITableViewCell {

    @IBOutlet weak var lblname: UILabel!
    @IBOutlet weak var patientImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configCell(data: String) {
        lblname.text = data
    }
}
