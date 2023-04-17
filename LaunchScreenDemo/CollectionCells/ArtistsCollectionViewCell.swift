//
//  ArtistsCollectionViewCell.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 17/04/23.
//

import UIKit

class ArtistsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet private weak var imageOfArtists: UIImageView!
    @IBOutlet private weak var lblOfArtists: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageOfArtists.layer.cornerRadius = imageOfArtists.frame.size.height/2
    }
    
    func configureCell(data: ArtistsModel) {
        imageOfArtists.image = UIImage(named: data.imageData )
        lblOfArtists.text = data.artistsData
    }
}
