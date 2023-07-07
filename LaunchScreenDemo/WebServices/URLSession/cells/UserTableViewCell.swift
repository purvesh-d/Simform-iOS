//
//  UserTableViewCell.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 30/06/23.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    // MARK: - IBOutlets
    @IBOutlet private weak var avatarImg: UIImageView!
    @IBOutlet private weak var idLbl: UILabel!
    @IBOutlet private weak var emailLbl: UILabel!
    @IBOutlet private weak var fnameLbl: UILabel!
    @IBOutlet private weak var lnameLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        avatarImg.layer.cornerRadius = 20
    }
    
    // MARK: - Method for configuring cell
    func configCells(data: UserData) {
        if let url = URL(string: data.avatar ?? "") {
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                guard let images = data else {
                    return
                }
                DispatchQueue.main.async {
                    self.avatarImg.image = UIImage(data: images)
                }
            }.resume()
        }
        idLbl.text = String(data.id)
        emailLbl.text = data.email
        fnameLbl.text = data.first_name
        lnameLbl.text = data.last_name
    }
}
