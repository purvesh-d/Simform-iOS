//
//  ComponentsTableViewCell.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 12/05/23.
//

import UIKit

class ComponentsTableViewCell: UITableViewCell {

    @IBOutlet private weak var btnComponent: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configCell(data: ComponentsModel) {
        btnComponent.setTitle(data.title, for: .normal)
    }
}
