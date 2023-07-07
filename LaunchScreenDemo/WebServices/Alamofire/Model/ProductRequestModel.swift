//
//  ProductRequestModel.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 05/07/23.
//

import Foundation
struct ProductRequestModel: Codable {
    let id: Int
    let title: String
    let price: Double
    let description, category: String
    let image: String
    let rating: Rating
}

// MARK: - Rating
struct Rating: Codable {
    let rate: Double
    let count: Int
}

struct ProductResponseModel: Codable {
    let id: Int
    let title: String
    let price: Int
    let description, category: String
    let image: String
    let rating: RatingModel
}

// MARK: - RatingModel
struct RatingModel: Codable {
    let rate: Double
    let count: Int
}
