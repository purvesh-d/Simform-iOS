//
//  ClothesViewModel.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 05/07/23.
//

import Foundation
class JeweleryViewModel {
    
    // MARK: - vars
    weak var delegate: GetProducts?
    var getData = Dynamic<[ProductRequestModel]?>(nil)
    var deleteSuccess = Dynamic<Int>(0)
    var deleteIndex = 0
    
    // MARK: - function to call get API
    func getProduct() {
        APIManagerDemo.shared.call(type: .getProduct) { [weak self] (result: Result<[ProductRequestModel], CustomError>) in
            switch result {
            case .success(let products):
                self?.delegate?.getProducts(products: products)
                self?.getData.value = products
                print(products)
            case .failure(let error):
                print("\(error.body)")
            }
        }
    }
    
    // MARK: - function to call delete API
    func deleteProduct() {
        APIManagerDemo.shared.call(type: .deleteProduct) { [weak self] (result: Result<ProductResponseModel, CustomError>) in
            switch result {
            case .success(let response):
                print("Deleted \(response)")
                self?.deleteSuccess.value = self?.deleteIndex ?? 0
            case .failure(let error):
                print("\(error.body)")
            }
        }
    }
    
    // MARK: - function to call put API
    func updateProduct(id: Int, title: String, image: String, price: Double, description: String, category: String, rating: RatingUpdate) {
        let param = JeweleryUpdateModel(id: id, title: title, price: price, description: description, category: category, image: image, rating: RatingUpdate.init(rate: 0, count: 0))
        APIManagerDemo.shared.call(type: .updateProduct, params: param.requestParameter()) { (result: Result<ProductResponseModel, CustomError>) in
            switch result {
            case .success(let response):
                print("Updated \(response)")
            case .failure(let error):
                print("\(error.body)")
            }
        }
    }
}
