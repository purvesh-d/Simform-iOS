//
//  UpdateUserModel.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 04/07/23.
//

import Foundation
struct SignUpRequest: Codable {
    let username: String
    let email: String
    let password: String
    
    func requestParameter() -> [String: Any] {
        var param: [String: Any] = [:]
        param["username"] = username
        param["email"] = email
        param["password"] = password
        return param
    }
}

struct SignUpResponse: Codable {
    let username: String?
    let email, password, id: String?
}

struct GetUserResponse: Codable {
    let username: String?
    let email, password, id: String?
}
