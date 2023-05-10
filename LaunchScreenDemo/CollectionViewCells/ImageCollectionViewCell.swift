//
//  ImageCollectionViewCell.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 26/04/23.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var lblData: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageview.layer.cornerRadius = 10
    }
    
    func configureCell(data: ImagesModel) {
        imageview.image = UIImage(named: data.imageData ?? "")
        lblData.text = data.dataOfLabel
    }
}
