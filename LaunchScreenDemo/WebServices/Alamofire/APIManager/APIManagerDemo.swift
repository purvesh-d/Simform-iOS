//
//  APIManagerDemo.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 04/07/23.
//

import Foundation
import Alamofire
import Reachability
class APIManagerDemo {
    
    // MARK: - Vars
    private let sessionManager: Session = Session()
    static var shared = APIManagerDemo()
    let reachability = try? Reachability()
    
    //MARK: - Call Api
    func call<T>(type: RequestItemsType, params: Parameters? = nil, handler: @escaping (Result<T, CustomError>) -> Void) where T: Codable {
        guard reachability?.connection ?? .unavailable != .unavailable else {
            handler(.failure(CustomError(title: "AppName", body: "No Internet Available")))
            return
        }
        self.sessionManager.request(type.url,
                                    method: type.httpMethod,
                                    parameters: params,
                                    encoding: type.encoding).validate().responseData {
            (data) in
            print(type.url)
            if self.handleResponseCode(res: data) {
                do {
                    guard let jsonData = data.data else {
                        handler(.failure(.init(title: "AppName", body: "Data not Found")))
                        return
                    }
                    let jsonDecoder = JSONDecoder()
                    jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
                    print("JSON Data \(jsonData)")
                    let result = try jsonDecoder.decode(T.self, from: jsonData)
                    
                    handler(.success(result))
                    
                } catch {
                    print("Error \(error)")
                    handler(.failure(.init(title: "AppName", body: "Server side error Please try again")))
                }
            } else {
                handler(.failure(CustomError(title: "Appname", body: "")))
            }
        }
    }
    
    //Handle Response
    private func handleResponseCode(res: AFDataResponse<Data>?) -> Bool {
        var isSuccess: Bool = false
        
        guard let dataResponse = res else {
            return isSuccess
        }
        guard let response = dataResponse.response else {
            return isSuccess
        }
        
        switch response.statusCode {
        case 200...300:
            isSuccess = true
        default: break
        }
        return isSuccess
    }
}
