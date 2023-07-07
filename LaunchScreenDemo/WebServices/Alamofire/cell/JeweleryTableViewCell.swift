//
//  ClothesTableViewCell.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 05/07/23.
//

import UIKit

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
        if let url = URL(string: product.image) {
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                guard let imageData = data else { return }
                DispatchQueue.main.async {
                    self.productImg.image = UIImage(data: imageData)
                }
            }.resume()
        }
        titleLbl.text = product.title
        priceLbl.text = String(product.price)
    }
}
