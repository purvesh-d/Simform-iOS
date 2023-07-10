//
//  ClothesTableViewCell.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 05/07/23.
//

import UIKit
import Kingfisher

class JeweleryTableViewCell: UITableViewCell {

    // MARK: - IBOutlets
    @IBOutlet private weak var priceLbl: UILabel!
    @IBOutlet private weak var titleLbl: UILabel!
    @IBOutlet private weak var productImg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    // MARK: - Method for configuring cell
    func configureCell(product: ProductRequestModel) {
        productImg.layer.cornerRadius = 10
        let url = URL(string: product.image)
        productImg.kf.setImage(with: url)
        titleLbl.text = product.title
        priceLbl.text = String(product.price)
    }
}
