//
//  ImageCollectionViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 26/04/23.
//

import UIKit

class ImageCollectionViewController: UIViewController {

    //MARK: - IBOutlet
    @IBOutlet private weak var collectionview: UICollectionView!
    private var arrayOfData = ImagesModel.getImageData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

//MARK: - UICollectionViewDataSource
extension ImageCollectionViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayOfData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let dataCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionViewCell", for: indexPath) as? ImageCollectionViewCell else {
            return UICollectionViewCell()
        }
        let newData = arrayOfData[indexPath.row]
        dataCell.configureCell(data: newData)
        return dataCell
    }
}
//MARK: - UICollectionViewDelegateFlowLayout
extension ImageCollectionViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width/3 - 20, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
}
