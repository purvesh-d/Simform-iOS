//
//  DemoCollectionViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 17/04/23.
//

import UIKit

class DemoCollectionViewController: UIViewController {

    @IBOutlet weak var albumsCollectionView: UICollectionView!
    @IBOutlet weak var artistsCollectionView: UICollectionView!
    var arrayOfArtists = ArtistsModel.getData()
    var arrayOfAlbums = AlbumsModel.getData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension DemoCollectionViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == artistsCollectionView {
            return arrayOfArtists.count
        } else {
            return arrayOfAlbums.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        print(indexPath)
        if collectionView == artistsCollectionView {
            guard let artistsCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ArtistsCollectionViewCell", for: indexPath) as? ArtistsCollectionViewCell else {
                return UICollectionViewCell()
            }
            print(indexPath.row)
            let newData = arrayOfArtists[indexPath.row]
            artistsCell.configureCell(data: newData)
            return artistsCell
        } else {
            guard let albumsCell = collectionView.dequeueReusableCell(withReuseIdentifier: "AlbumsCollectionViewCell", for: indexPath) as? AlbumsCollectionViewCell else {
                return UICollectionViewCell()
            }
            print(indexPath.row)
            let newData = arrayOfAlbums[indexPath.row]
            albumsCell.configureCell(data: newData)
            return albumsCell
        }
    }
}

extension DemoCollectionViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == artistsCollectionView {
            return CGSize(width: collectionView.bounds.width/3, height: 155)
        } else {
            return CGSize(width: collectionView.bounds.width/3 - 20, height: 200)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView == albumsCollectionView {
            return 2
        } else {
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        if collectionView == artistsCollectionView {
            return UIEdgeInsets.init(top: 20, left: 10, bottom: 10, right: 10)
        } else {
            return UIEdgeInsets.init(top: 20, left: 10, bottom: 10, right: 10)
        }
    }
}

