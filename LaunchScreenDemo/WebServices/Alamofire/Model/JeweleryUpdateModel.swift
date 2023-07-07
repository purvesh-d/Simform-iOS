//
//  JeweleryUpdateModel.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 07/07/23.
//

import Foundation

struct JeweleryUpdateModel: Codable {
    let id: Int
    let title: String
    let price: Double
    let description, category: String
    let image: String
    let rating: RatingUpdate
    
    func requestParameter() -> [String: Any] {
        var param: [String: Any] = [:]
        param["title"] = title
        param["price"] = price
        param["image"] = image
        param["description"] = description
        param["category"] = category
        param["rating"] = rating
        return param
    }
}

// MARK: - RatingUpdate
struct RatingUpdate: Codable {
    let rate, count: Int
}
