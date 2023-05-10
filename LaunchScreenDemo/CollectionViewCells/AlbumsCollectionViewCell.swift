//
//  AlbumsCollectionViewCell.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 17/04/23.
//

import UIKit

class AlbumsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet private weak var lbldetails: UILabel!
    @IBOutlet private weak var lblOfAlbum: UILabel!
    @IBOutlet private weak var imageAlbum: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageAlbum.layer.cornerRadius = 10
    }
    
    func configureCell(data: ArtistsModel) {
        imageAlbum.image = UIImage(named: data.imageData ?? "")
        lblOfAlbum.text = data.artistsData
        lbldetails.text = data.detailsOfAlbum
    }
}
