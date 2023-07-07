//
//  ImageUploadingViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 01/07/23.
//

import UIKit

class ImageUploadingViewController: UIViewController, UINavigationControllerDelegate {
    
    //MARK: - IBOutlets and Vars
    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private weak var progressBar: UIProgressView!
    private var imagePicker = UIImagePickerController()
    private var imageUploader = ImageUploader()
    var url = ""
    var image: URL?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
    }
       
    @IBAction func selectImageAction(_ sender: UIButton) {
        imagePicker.sourceType = .photoLibrary
        imagePicker.allowsEditing = true
        imagePicker.delegate = self
        self.present(imagePicker, animated: true)
    }
    
    @IBAction func uploadImageAction(_ sender: UIButton) {
        ImageUploader.shared.delegate = self
        DispatchQueue.main.async {
            ImageUploader.shared.uploadData(image: self.imageView.image ?? UIImage(), type: ImageUploadResponse.self) { [weak self] (result: Result<ImageUploadResponse, Error>) in
                switch result {
                case .success(let imageResponse):
                    self?.url = imageResponse.data?.url ?? ""
                    print("Response: ", imageResponse.data?.url ?? "")
                    break
                case .failure(let error):
                    print("Error: ",error)
                }
            }
        }
    }
    
    @IBAction func downloadAction(_ sender: UIButton) {
        ImageUploader.shared.delegateDownload = self
        ImageUploader.shared.downloadFile(stringUrl: url)
    }
    
    @IBAction func logoutAction(_ sender: UIButton) {
        logoutUser()
        let storyboard = UIStoryboard(name: "WebServices", bundle: nil)
        if let loginVC = storyboard.instantiateViewController(withIdentifier: "LoginUserViewController") as? LoginUserViewController {
            navigationController?.pushViewController(loginVC, animated: true)
        }
    }
    
    private func logoutUser() {
        APIManager.shared.callAPI(urlString: "https://reqres.in/api/logout") { (result: Result<UserModel, Error>) in
            switch result {
                case .success(let response):
                    DispatchQueue.main.async {
                        print("Response: \(response)")
                    }
                case .failure(let error):
                    print("error \(error)")
            }
       }
    }
}

// MARK: - URLSessionTaskDelegate
extension ImageUploadingViewController: URLSessionTaskDelegate {
    func urlSession(_ session: URLSession, task: URLSessionTask, didSendBodyData bytesSent: Int64, totalBytesSent: Int64, totalBytesExpectedToSend: Int64) {
        DispatchQueue.main.async {
            self.progressBar.progress = Float(totalBytesSent) / Float(totalBytesExpectedToSend)
        }
        
    }
}

// MARK: - URLSessionDownloadDelegate
extension ImageUploadingViewController: URLSessionDownloadDelegate {
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) {
        guard let url = downloadTask.originalRequest?.url else {
            return
        }
        let imagePath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let destinationPath = imagePath.appendingPathComponent(url.lastPathComponent)
        UserDefaults.standard.set(destinationPath, forKey: "lastFile")
        
        do {
            try? FileManager.default.removeItem(at: destinationPath)
            try FileManager.default.copyItem(at: location, to: destinationPath)
            self.image = destinationPath
            print("Destination Path: \(destinationPath)")
        } catch let error {
            print("Error \(error)")
        }
    }
}

extension ImageUploadingViewController: UIImagePickerControllerDelegate {
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        guard let image = info[.editedImage] else {
            return
        }
        imageView.image = image as? UIImage
        dismiss(animated: true)
    }
}
