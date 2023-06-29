//
//  PatientTableViewCell.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 12/05/23.
//

import UIKit

class PatientTableViewCell: UITableViewCell {

    //MARK: - IBOutlets
    @IBOutlet private weak var lblname: UILabel!
    @IBOutlet private weak var patientImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configCell(data: String) {
        lblname.text = data
    }
}
