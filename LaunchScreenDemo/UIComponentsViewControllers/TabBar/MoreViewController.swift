//
//  MoreViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 20/04/23.
//

import UIKit

class MoreViewController: UIViewController {

    @IBOutlet private weak var searchBar: UISearchBar!
    @IBOutlet private weak var searchCollectionView: UICollectionView!
    
    var arrayOLabels = ["The Vampire Diaries", "Ted Lasso", "Legacies", "Orignals", "the family man", "Ray", "candy", "Mumbai Diaries", "November Story", "Grahan", "Money Heist", "Squid Game", "Friends", "Vikings"]
    var searchResult: [String] = []
    var isSearchActive: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.setImage(UIImage(systemName: "folder"), for: UISearchBar.Icon.search, state: .normal)
        searchBar.setImage(UIImage(systemName: "trash"), for: UISearchBar.Icon.clear, state: .normal)
        searchBar.autocapitalizationType = .none
    }
}

extension MoreViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return isSearchActive == true ? searchResult.count : arrayOLabels.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let labelCell = collectionView.dequeueReusableCell(withReuseIdentifier: "SeriesSearchCollectionViewCell", for: indexPath) as? SeriesSearchCollectionViewCell else {
            return UICollectionViewCell()
        }
        labelCell.seriesName.text = isSearchActive == true ? searchResult[indexPath.row] : arrayOLabels[indexPath.row]
        return labelCell
    }
}

extension MoreViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width/2 - 20 , height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
}

extension MoreViewController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchResult = searchText.isEmpty ? arrayOLabels : arrayOLabels.filter { $0.localizedCaseInsensitiveContains(searchText)}
        
        if (searchResult.count == 0) {
            isSearchActive = false
        } else {
            isSearchActive = true
        }
        self.searchCollectionView.reloadData()
    }
}
