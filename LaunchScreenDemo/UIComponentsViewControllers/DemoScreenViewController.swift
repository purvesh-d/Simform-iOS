//
//  DemoScreenViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 02/05/23.
//

import UIKit

class DemoScreenViewController: UIViewController {

    //MARK: - IBoutlets
    @IBOutlet private weak var collectionView: UICollectionView!
    @IBOutlet private weak var pauseImage: UIImageView!
    @IBOutlet private weak var dataView: UIView!
    @IBOutlet private weak var dotImageView: UIView!
    @IBOutlet private weak var musicView: UIView!
    @IBOutlet private weak var profileImage: UIImageView!
    
    //MARK: - private variables
    var arrayOfData = HomeModel.getHomeData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    private func setupUI() {
        dataView.layer.shadowColor = UIColor.white.cgColor
        dataView.layer.shadowOpacity = 0.3
        dataView.layer.shadowRadius = 10
        
        profileImage.layer.cornerRadius = profileImage.frame.size.width/2
        musicView.layer.cornerRadius = 10
        dotImageView.layer.cornerRadius = dotImageView.frame.size.width/2
        
        pauseImage.layer.shadowColor = UIColor.white.cgColor
        pauseImage.layer.shadowOpacity = 0.2
        pauseImage.layer.shadowRadius = 5
        
        collectionView.layer.cornerRadius = 10
    }
}

extension DemoScreenViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayOfData.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionViewCell", for: indexPath) as? HomeCollectionViewCell else {
            return UICollectionViewCell()
        }
        let newData = arrayOfData[indexPath.row]
        cell.configCell(data: newData)
        return cell
    }
}

extension DemoScreenViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        10
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width/2, height: 170)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
}
