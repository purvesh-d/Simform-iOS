//
//  RequestItemsType.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 04/07/23.
//

import Foundation
import Alamofire

//MARK: - Enums
enum RequestItemsType: Equatable {
    case getUserList
    case signUp
    case getUser
    case updateUser
    case deleteUser
    case patchUser
    case getProduct
    case updateProduct
    case deleteProduct
}

extension RequestItemsType {
    
    var baseURL: String {
        switch self {
        case .signUp, .getUser, .updateUser, .deleteUser:
            return "https://64a3a5b5c3b509573b565cfc.mockapi.io/"
        case .patchUser:
            return "https://reqres.in/"
        case .deleteProduct, .getProduct, .updateProduct:
            return "https://fakestoreapi.com/"
        case .getUserList:
            return "https://reqres.in/"
        }
    }
    
    var api: String {
        switch self {
        case .getUser, .signUp, .updateUser, .deleteUser, .deleteProduct, .getProduct, .updateProduct:
            return ""
        case .patchUser, .getUserList:
            return "api/"
        }
    }
    
    var path: String {
        switch self {
        case .signUp, .getUser, .updateUser, .deleteUser:
            return "UserUpdate/"
        case .patchUser:
            return "users/"
        case .getProduct:
            return "products/category/jewelery"
        case .deleteProduct, .updateProduct:
            return "products/"
        case .getUserList:
            return "users?page=2"
        }
    }
    
    var httpMethod: HTTPMethod {
        switch self {
        case .signUp:
            return .post
        case .getUser, .getProduct, .getUserList:
            return .get
        case .updateUser, .updateProduct:
            return .put
        case .deleteUser, .deleteProduct:
            return .delete
        case .patchUser:
            return .patch
        }
    }
    
    var url: URL {
        switch self {
        case .signUp, .getProduct, .getUserList:
            return URL(string: self.baseURL + self.api + self.path)!
        case .getUser, .updateUser, .deleteUser:
            return URL(string: self.baseURL + self.api + self.path + (UserDefaults.standard.string(forKey: "id") ?? ""))!
        case .patchUser:
            return URL(string: self.baseURL + self.api + self.path + "2")!
        case .deleteProduct, .updateProduct:
            return URL(string: self.baseURL + self.path + "6")!
        }
    }
    
    var encoding: ParameterEncoding {
        switch self {
        case .signUp, .getUser, .updateUser, .deleteUser, .patchUser, .deleteProduct, .getProduct, .updateProduct, .getUserList:
            return JSONEncoding.default
        }
    }
}
