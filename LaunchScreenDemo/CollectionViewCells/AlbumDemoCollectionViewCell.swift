//
//  AlbumDemoCollectionViewCell.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 26/04/23.
//

import UIKit

class AlbumDemoCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var albumsData: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var detailsData: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageView.layer.cornerRadius = 10
    }
    
    func configureCell(data: ArtistsModel) {
        imageView.image = UIImage(named: data.imageData ?? "")
        albumsData.text = data.artistsData
        detailsData.text = data.detailsOfAlbum
    }
}
