//
//  ImageUploader.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 03/07/23.
//

import Foundation
import UIKit
class ImageUploader {
    
    // MARK: - Vars
    weak var delegate: URLSessionTaskDelegate?
    weak var delegateDownload: URLSessionDownloadDelegate?
    static let shared = ImageUploader()
    var downloadTask: URLSessionDownloadTask = URLSessionDownloadTask()
    var urlSession: URLSession = URLSession()
    lazy var urlSessionConfig: URLSessionConfiguration = {
        let config = URLSessionConfiguration.background(withIdentifier: "\(Bundle.main.bundleIdentifier ?? "")")
        config.timeoutIntervalForRequest = 30
        return config
    }()
    
    // Image uploading using BinaryFile
    func uploadData<T: Decodable>(image: UIImage, type : T.Type , completion : @escaping ((Result<T,Error>) -> ()) ) {
        if var url = URL(string: "https://api.imgbb.com/1/upload") {
            url.append(queryItems: [URLQueryItem(name: "key", value: "eb2fd383fa5155917cee090c0367c01b")])
            var urlRequest = URLRequest(url: url)
            urlRequest.httpMethod = "POST"
            let boundary = UUID().uuidString
            urlRequest.setValue("multipart/form-data; boundary=\(boundary)", forHTTPHeaderField: "Content-Type")
            let data = setUpMultiPartData(paramName: "image", fileName: "ShortHand", image: image, boundary: boundary)
            let uploadTask = URLSession.shared.uploadTask(with: urlRequest, from: data) { data, response, error in
                if let data {
                    do {
                        let response = try JSONDecoder().decode(T.self, from: data)
                        completion(.success(response))
                    } catch let error {
                        print("error \(error)")
                    }
                }
            }
            uploadTask.delegate = delegate
            uploadTask.resume()
        }
    }
    
     //Image uploading using base64 string
    func uplaodImage(image: UIImageView) {
        if var url = URL(string: "https://api.imgbb.com/1/upload") {
            url.append(queryItems: [URLQueryItem(name: "key", value: "eb2fd383fa5155917cee090c0367c01b")])
            var urlRequest = URLRequest(url: url)
            urlRequest.httpMethod = "POST"
            let body = setMultipartFormData(params: ["image" : (image.image!.pngData()!.base64EncodedString(), nil)])
            let uploadTask = URLSession.shared.uploadTask(with: urlRequest, from: body) { (data, urlResponse, error) in
                if let data = data {
                    do {
                        let response = try JSONDecoder().decode(ImageUploadResponse.self, from: data)
                        print(response)
                    } catch let error {
                        print("error \(error)")
                    }
                }
            }
            uploadTask.delegate = delegate
            uploadTask.resume()
        }
    }
    
    // for binary
    func setUpMultiPartData(paramName: String, fileName: String?, image: UIImage, boundary: String) -> Data {
        var data = Data()
        data.append("\r\n--\(boundary)\r\n".data(using: .utf8) ?? Data())
        if let fileName {
            data.append("Content-Disposition: form-data; name=\"\(paramName)\"; filename=\"\(fileName)\"\r\n".data(using: .utf8) ?? Data())
        }
        else {
            data.append("Content-Disposition: form-data; name=\"\(paramName)\"\r\n".data(using: .utf8) ?? Data())
        }
        data.append("Content-Type: image/png\r\n\r\n".data(using: .utf8) ?? Data())
        data.append(image.pngData() ?? Data())
        data.append("\r\n--\(boundary)--\r\n".data(using: .utf8) ?? Data())
        return data
    }
    
    // for basw64String
    func setMultipartFormData(params: [String: (String, filename: String?)]) -> Data {
        let boundary = UUID().uuidString
        var body = Data()
        for (key, (data, filename)) in params {
            body.append("--\(boundary)\r\n")
            if let filename = filename {
                body.append("Content-Disposition: form-data; name=\"\(key)\"; filename=\"\(filename)\"\r\n")
            }
            else {
                body.append("Content-Disposition: form-data; name=\"\(key)\"\r\n")
            }
            body.append("\r\n")
            body.append(data)
            body.append("\r\n")
        }
        body.append("--\(boundary)--")
        return body
    }
    
    // Download Image
    func downloadFile(stringUrl: String) {
        if let url = URL(string: stringUrl) {
            urlSession = URLSession(configuration: urlSessionConfig, delegate: delegate, delegateQueue: nil)
            downloadTask = urlSession.downloadTask(with: url)
            downloadTask.resume()
        }
    }
}

extension Data {
    mutating func append(_ s: String) {
        self.append(s.data(using: .utf8)!)
    }
}
