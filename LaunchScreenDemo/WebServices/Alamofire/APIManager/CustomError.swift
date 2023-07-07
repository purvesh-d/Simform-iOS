//
//  CustomError.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 04/07/23.
//

import Foundation
class CustomError: Error {

    // MARK: Vars & Lets
    var title = ""
    var body = ""

    // MARK: Intialization
    init(title: String, body: String) {
        self.title = title
        self.body = body
    }
}

class NetworkError: Codable {
    let message: String
    let code: Int?
}
