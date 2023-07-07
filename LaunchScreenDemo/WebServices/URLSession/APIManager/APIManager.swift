//
//  APIManager.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 01/07/23.
//

import Foundation
class APIManager {
    static let shared = APIManager()
    func callAPI<T: Decodable>(urlString: String, requestMethod: String = "GET", parameter: Codable? = nil ,completion: @escaping (Result<T, Error>) -> Void) {
        guard let url = URL(string: urlString) else {
            completion(.failure(APIError.invalidURL))
            return
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = requestMethod
        
        switch requestMethod {
        case "GET":
            break
        case "POST":
            if let parameter = parameter {
                do {
                    urlRequest.httpBody = try JSONEncoder().encode(parameter)
                } catch let error {
                    print("Errors \(error)")
                }
                urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
                urlRequest.addValue("application/json", forHTTPHeaderField: "Accept")
            }
        default:
            break
        }
        
        let task = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data, let _ = response as? HTTPURLResponse else {
                completion(.failure(APIError.requestFailed))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let decodedData = try decoder.decode(T.self, from: data)
                completion(.success(decodedData))
            } catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }    
}

enum APIError: Error {
    case invalidURL
    case requestFailed
}
