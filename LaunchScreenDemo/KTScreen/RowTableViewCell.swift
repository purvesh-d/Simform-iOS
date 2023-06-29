//
//  RowTableViewCell.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 27/04/23.
//

import UIKit

class RowTableViewCell: UITableViewCell {
    
    //MARK: - IBOutlets
    @IBOutlet private weak var dateLbl: UILabel!
    @IBOutlet private weak var countryLbl: UILabel!
    @IBOutlet private weak var subtitleLbl: UILabel!
    @IBOutlet private weak var titlelbl: UILabel!
    @IBOutlet private weak var imageview: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageview.layer.cornerRadius = imageview.frame.size.height/2
    }
    
    func configureCell(dataOfRow: ResumeModel) {
        imageview.image = UIImage(named: dataOfRow.imageName ?? "")
        titlelbl.text = dataOfRow.titleLabel
        subtitleLbl.text = dataOfRow.subtitleLabel
        countryLbl.text = dataOfRow.countryLabel
        dateLbl.text = dataOfRow.dateLabel
    }
}
