//
//  PHPickerDemoViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 18/04/23.
//

import UIKit
import PhotosUI

class PHPickerDemoViewController: UIViewController {

    //MARK: - IBOutlet
    @IBOutlet private weak var imageCollectionView: UICollectionView!
    private var arrayOfImages = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //MARK: - Button Action
    @IBAction func imageAction(_ sender: UIButton) {
        var configImages = PHPickerConfiguration()
        configImages.selectionLimit = 3
        
        let imageViewController = PHPickerViewController(configuration: configImages)
        imageViewController.delegate = self
        self.present(imageViewController, animated: true)
    }
}

//MARK: - PHPickerViewControllerDelegate
extension PHPickerDemoViewController: PHPickerViewControllerDelegate {
    
    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        dismiss(animated: true)
        for result in results {
            result.itemProvider.loadObject(ofClass: UIImage.self) { object, error in
                if let image = object as? UIImage {
                    self.arrayOfImages.append(image)
                }
                DispatchQueue.main.async {
                    self.imageCollectionView.reloadData()
                }
            }
        }
    }
}

//MARK: - UICollectionViewDataSource
extension PHPickerDemoViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        arrayOfImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let imageCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImagePickerDataCollectionViewCell", for: indexPath) as? ImagePickerDataCollectionViewCell else {
            return UICollectionViewCell()
        }
        imageCell.selectedImages.image = arrayOfImages[indexPath.row]
        return imageCell
    }
}

//MARK: - UICollectionViewDelegateFlowLayout
extension PHPickerDemoViewController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width , height: 200)
    }
}
