//
//  UserModel.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 03/07/23.
//

import Foundation
struct UserModel: Codable {
    var page: Int?
    var per_page: Int?
    var total: Int?
    var total_pages: Int?
    var data: [UserData] = []
}

struct UserData: Codable {
    var id: Int = 0
    var email: String?
    var first_name: String?
    var last_name: String?
    var avatar: String?
}
