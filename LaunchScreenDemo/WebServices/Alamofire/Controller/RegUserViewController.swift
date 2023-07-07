//
//  RegUserViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 05/07/23.
//

import UIKit

class RegUserViewController: UIViewController {

    // MARK: - IBOutlets and Vars
    @IBOutlet private weak var registerBtn: UIButton!
    @IBOutlet private weak var passwordTf: UITextField!
    @IBOutlet private weak var emailTf: UITextField!
    @IBOutlet private weak var usernameTf: UITextField!
    @IBOutlet private weak var cardview: UIView!
    private let viewModel: RegisterViewModel = RegisterViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cardview.layer.cornerRadius = 20
        bindViewModel()
        bindSignUpUi()
    }

    // MARK: - private methods
    private func bindViewModel() {
        viewModel.validationError.bind { [weak self]
            message in
            self?.showAlertDialog(message: message, type: .error)
        }
    }
    
    private func bindSignUpUi() {
        viewModel.error.bind { [weak self]
            message in
            print("Error \(message)")
            self?.showAlertDialog(message: "Server side Error", type: .error)
        }
        
        viewModel.signUpSuccess.bind { [weak self]
            message in
            print(message)
            self?.showAlertDialog(message: "Welcome to our App \(message)", type: .success)
        }
    }
    
    @IBAction func registerBtnAction(_ sender: UIButton) {
        if let username = usernameTf.text, let email = emailTf.text, let password = passwordTf.text {
            viewModel.validateData(username: username, email: email, password: password)
        }
    }
    
    private func showAlertDialog(message: String) {
        let alert = UIAlertController(title: message, message: "", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Okay", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true)
    }
    
    private func showAlertDialog(message: String, type: ResultType) {
        let alert = UIAlertController(title: "Register App", message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Okay", style: UIAlertAction.Style.default, handler: {
            _ in
            if type == ResultType.success {
                if let vc = self.storyboard?.instantiateViewController(withIdentifier: "JeweleryViewController") {
                    self.navigationController?.pushViewController(vc, animated: true)
                }
            }
        }))
        self.present(alert, animated: true)
    }
}

extension RegUserViewController {
    enum ResultType {
        case error
        case success
    }
}
