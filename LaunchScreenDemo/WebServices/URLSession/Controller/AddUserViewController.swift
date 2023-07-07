//
//  AddUserViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 01/07/23.
//

import UIKit

class AddUserViewController: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet private weak var passwordTf: UITextField!
    @IBOutlet private weak var emailTf: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
    }
    
    @IBAction func registerBtnAction(_ sender: UIButton) {
        registerUser()
        let storyboard = UIStoryboard(name: "WebServices", bundle: nil)
        if let imageVC = storyboard.instantiateViewController(withIdentifier: "LoginUserViewController") as? LoginUserViewController {
            navigationController?.pushViewController(imageVC, animated: true)
        }
    }
    
    @IBAction func loginBtnAction(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "WebServices", bundle: nil)
        if let loginVC = storyboard.instantiateViewController(withIdentifier: "LoginUserViewController") as? LoginUserViewController {
            navigationController?.pushViewController(loginVC, animated: true)
        }
    }
    
    private func registerUser() {
        if (emailTf.text?.isEmpty ?? true || (passwordTf.text?.isEmpty ?? true)) {
            showErrorDialog()
        }
        
        let user = UserRegister(email: emailTf.text, password: passwordTf.text)
        APIManager.shared.callAPI(urlString: "https://64a3a5b5c3b509573b565cfc.mockapi.io/User", requestMethod: "POST", parameter: user) { [weak self]
            (result: Result<UserRegister, Error>) in
            switch result {
            case .success(let responese):
                DispatchQueue.main.async {
                    print("Response: \(responese)")
                    self?.showAlertDialog()
                }
            case .failure(let error):
                print("Error \(error.localizedDescription)")
            }
        }
    }
    private func showAlertDialog() {
        let alert = UIAlertController(title: "Register Successfully", message: "", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Okay", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true)
    }
    
    private func showErrorDialog() {
        let alert = UIAlertController(title: "Please enter fields", message: "", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Okay", style: UIAlertAction.Style.default))
        self.present(alert, animated: true)
    }
}
