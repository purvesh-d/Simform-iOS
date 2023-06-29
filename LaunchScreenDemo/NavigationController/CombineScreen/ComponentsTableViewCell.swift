//
//  ComponentsTableViewCell.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 12/05/23.
//

import UIKit

class ComponentsTableViewCell: UITableViewCell {

    //MARK: - IBOutlet
    @IBOutlet private weak var lblComponents: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configCell(data: ComponentsModel) {
        lblComponents.text = data.title
    }
}
