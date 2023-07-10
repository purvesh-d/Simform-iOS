//
//  UsersTableViewCell.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 04/07/23.
//

import UIKit
import Kingfisher

class UsersTableViewCell: UITableViewCell {

    // MARK: - IBOutlets
    @IBOutlet private weak var lnameLbl: UILabel!
    @IBOutlet private weak var fnameLbl: UILabel!
    @IBOutlet private weak var emailLbl: UILabel!
    @IBOutlet private weak var idLbl: UILabel!
    @IBOutlet private weak var avatarImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        avatarImg.layer.cornerRadius = 20
    }
    
    // MARK: - Method for configuring cell
    func configCells(data: User) {
        let url = URL(string: data.avatar ?? "")
        avatarImg.kf.setImage(with: url)
        idLbl.text = String(data.id)
        emailLbl.text = data.email
        fnameLbl.text = data.first_name
        lnameLbl.text = data.last_name
    }
}
