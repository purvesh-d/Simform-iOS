//
//  JobRequestModel.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 05/07/23.
//

import Foundation
struct JobRequestModel: Codable {
    let name: String?
    let job: String?
    
    func requestParameter() -> [String: Any] {
        var param: [String: Any] = [:]
        param["name"] = name
        param["job"] = job
        return param
    }
}

struct JobResponseModel: Codable {
    let name: String?
    let job: String?
    let updatedAt: String?
}
