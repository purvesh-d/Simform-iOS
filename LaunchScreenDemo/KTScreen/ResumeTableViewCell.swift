//
//  ResumeTableViewCell.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 27/04/23.
//

import UIKit

class ResumeTableViewCell: UITableViewCell {
    
    //MARK: - IBOutlets
    @IBOutlet private weak var detailLbl: UILabel!
    @IBOutlet private weak var subtitleLbl: UILabel!
    @IBOutlet private weak var titleLbl: UILabel!
    @IBOutlet private weak var pdfBtn: UIButton!
    @IBOutlet private weak var cvBtn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        pdfBtn.layer.cornerRadius = 10
        cvBtn.layer.cornerRadius = 10
    }
    
    func configureCell(data: ResumeModel) {
        cvBtn.setTitle(data.cvBtn, for: .normal)
        pdfBtn.setTitle(data.pdfBrn, for: .normal)
        titleLbl.text = data.titleLabel
        subtitleLbl.text = data.subtitleLabel
        detailLbl.text = data.description
    }
}
