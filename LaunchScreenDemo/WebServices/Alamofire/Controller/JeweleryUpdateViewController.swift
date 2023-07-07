//
//  JeweleryUpdateViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 06/07/23.
//

import UIKit

class JeweleryUpdateViewController: UIViewController {
    
    //MARK: - IBOutlets and Vars
    @IBOutlet private weak var descriptionLbl: UILabel!
    @IBOutlet private weak var updateBtn: UIButton!
    @IBOutlet private weak var priceLbl: UILabel!
    @IBOutlet private weak var titleLbl: UILabel!
    @IBOutlet private weak var imageView: UIImageView!
    var product: ProductRequestModel?
    private var viewModel: JeweleryViewModel = JeweleryViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setData()
    }
    
    //MARK: - Private methods
    private func setData() {
        if let url = URL(string: product?.image ?? "") {
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                guard let images = data else {
                    return
                }
                DispatchQueue.main.async {
                    self.imageView.image = UIImage(data: images)
                }
            }.resume()
        }
        titleLbl.text = product?.title
        priceLbl.text = "$\(product?.price ?? 0)"
        descriptionLbl.text = product?.description
    }

    @IBAction func updateBtnAction(_ sender: UIButton) {
        viewModel.updateProduct(id: 1, title: "test product", image: "https://i.pravatar.cc", price: 0, description: "lorem ipsum set", category: "electronic", rating: RatingUpdate(rate: 5, count: 3))
    }
}
