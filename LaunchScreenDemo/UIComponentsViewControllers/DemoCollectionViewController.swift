//
//  DemoCollectionViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 17/04/23.
//

import UIKit

class DemoCollectionViewController: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet private weak var searchAlbums: UISearchBar!
    @IBOutlet private weak var albumsCollectionView: UICollectionView!
    @IBOutlet private weak var artistsCollectionView: UICollectionView!
    
    //MARK: - Private Variables
    private var arrayOfArtists = ArtistsModel.getArtistsData()
    private var arrayOfAlbums = ArtistsModel.getAlbumsData()
    private var searchResult: [ArtistsModel] = []
    private var isSearchActive: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchAlbums.autocapitalizationType = .none
    }
}

//MARK: - UICollectionViewDataSource
extension DemoCollectionViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == artistsCollectionView {
            return arrayOfArtists.count
        } else {
            return isSearchActive == true ? searchResult.count : arrayOfAlbums.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == artistsCollectionView {
            guard let artistsCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ArtistsCollectionViewCell", for: indexPath) as? ArtistsCollectionViewCell else {
                return UICollectionViewCell()
            }
            let newData = arrayOfArtists[indexPath.row]
            artistsCell.configureCell(data: newData)
            return artistsCell
        } else {
            guard let albumsCell = collectionView.dequeueReusableCell(withReuseIdentifier: "AlbumsCollectionViewCell", for: indexPath) as? AlbumsCollectionViewCell else {
                return UICollectionViewCell()
            }
            let newData = isSearchActive == true ? searchResult[indexPath.row] : arrayOfAlbums[indexPath.row]
            albumsCell.configureCell(data: newData)
            return albumsCell
        }
    }
}

//MARK: - UICollectionViewDelegateFlowLayout
extension DemoCollectionViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == artistsCollectionView {
            return CGSize(width: collectionView.bounds.width/3 - 10, height: 155)
        } else {
            return CGSize(width: collectionView.bounds.width/3 - 20, height: 200)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView == albumsCollectionView {
            return 2
        } else {
            return 1
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

//MARK: - UISearchBarDelegate
extension DemoCollectionViewController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        searchResult = searchText.isEmpty ? arrayOfAlbums : arrayOfAlbums.filter {
            $0.artistsData?.range(of: searchText, options: .literal) != nil
        }
     
        if (searchResult.count == 0) {
            isSearchActive = false
        } else {
            isSearchActive = true
        }
        self.albumsCollectionView.reloadData()
    }
}
