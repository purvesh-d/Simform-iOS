//
//  PortfolioTableViewCell.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 27/04/23.
//

import UIKit

class PortfolioTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var collectionView: UICollectionView!
    private var arrayOPortfolio = ResumeModel.getPortfolio()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.dataSource = self
        collectionView.delegate = self
    }
}

//MARK: - extension UICollectionViewDataSource
extension PortfolioTableViewCell: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayOPortfolio.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? CollectionViewCell else {
            return CollectionViewCell()
        }
        let newData = arrayOPortfolio[indexPath.row]
        cell.configCell(data: newData)
        return cell
    }
}

//MARK: - extension UICollectionViewDelegateFlowLayout
extension PortfolioTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width/3-20, height: collectionView.bounds.width/3-20)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 5, left: 10, bottom: 10, right: 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        16.13
    }
}
