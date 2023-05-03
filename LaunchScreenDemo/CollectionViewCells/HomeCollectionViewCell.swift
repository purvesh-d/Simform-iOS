//
//  HomeCollectionViewCell.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 03/05/23.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet private weak var subtitleLbl: UILabel!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var imageView: UIImageView!
    
    func configCell(data: HomeModel) {
        layer.cornerRadius = 10
        imageView.image = UIImage(named: data.imageName)
        titleLabel.text = data.title
        subtitleLbl.text = data.subtitle
    }
}
