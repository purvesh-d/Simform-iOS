//
//  CollectionViewCell.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 27/04/23.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    //MARK: - IBOutlet
    @IBOutlet private weak var imageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageView.layer.cornerRadius = 8
    }
    
    func configCell(data: ResumeModel) {
        imageView.image = UIImage(named: data.imageName ?? "")
    }
}
