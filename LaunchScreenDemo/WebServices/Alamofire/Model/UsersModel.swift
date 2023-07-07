//
//  UsersModel.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 04/07/23.
//

import Foundation
struct UsersModel: Codable {
    var page: Int?
    var per_page: Int?
    var total: Int?
    var total_pages: Int?
    var data: [User] = []
}

struct User: Codable {
    var id: Int = 0
    var email: String?
    var first_name: String?
    var last_name: String?
    var avatar: String?
}
