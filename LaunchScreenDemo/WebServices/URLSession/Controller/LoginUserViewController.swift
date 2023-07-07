//
//  LoginUserViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 03/07/23.
//

import UIKit

class LoginUserViewController: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet private weak var passwordTf: UITextField!
    @IBOutlet private weak var emailTf: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
    }

    @IBAction func loginBtnAction(_ sender: UIButton) {
        if (emailTf.text?.isEmpty ?? true || (passwordTf.text?.isEmpty ?? true)) {
            showErrorDialog()
        }
        loginUser()
        let storyboard = UIStoryboard(name: "WebServices", bundle: nil)
        if let imageVC = storyboard.instantiateViewController(withIdentifier: "ImageUploadingViewController") as? ImageUploadingViewController {
            navigationController?.pushViewController(imageVC, animated: true)
        }
    }
    
    @IBAction func registerBtnAction(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "WebServices", bundle: nil)
        if let registerVC = storyboard.instantiateViewController(withIdentifier: "AddUserViewController") as? AddUserViewController {
            navigationController?.pushViewController(registerVC, animated: true)
        }
    }
    
    private func loginUser() {
        if (emailTf.text?.isEmpty ?? true || (passwordTf.text?.isEmpty ?? true)) {
            showErrorDialog()
        }
        
        let user = UserRegister(email: emailTf.text, password: passwordTf.text)
        APIManager.shared.callAPI(urlString: "https://reqres.in/api/login", requestMethod: "POST", parameter: user) {
            (result: Result<UserRegister, Error>) in
            switch result {
            case .success(let responese):
                DispatchQueue.main.async {
                   print(responese)
                }
            case .failure(let error):
                print("Error \(error.localizedDescription)")
            }
        }
    }
    
    private func showErrorDialog() {
        let alert = UIAlertController(title: "Please enter fields", message: "", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Okay", style: UIAlertAction.Style.default))
        self.present(alert, animated: true)
    }
}
