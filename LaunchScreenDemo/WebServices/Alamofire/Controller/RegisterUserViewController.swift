//
//  RegisterUserViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 04/07/23.
//

import UIKit

class RegisterUserViewController: UIViewController {
    
    //MARK: - IBOutlets and Let
    @IBOutlet private weak var registerBtn: UIButton!
    @IBOutlet private weak var passwordTf: UITextField!
    @IBOutlet private weak var emailTf: UITextField!
    @IBOutlet private weak var usernameTf: UITextField!
    @IBOutlet private weak var cardView: UIView!
    private let viewModel: RegisterViewModel = RegisterViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cardView.layer.cornerRadius = 20
        bindViewModel()
        bindSignUpUi()
    }
    
    // MARK: - Private methods
    private func bindViewModel() {
        viewModel.validationError.bind { [weak self]
            message in
            self?.showAlertDialog(message: message, type: .error)
        }
    }
    
    private func bindSignUpUi() {
        viewModel.error.bind { [weak self]
            message in
            self?.showAlertDialog(message: "Server side Error", type: TypeDialog.error)
        }
        
        viewModel.signUpSuccess.bind { [weak self]
            message in
            self?.showAlertDialog(message: "Welcome to our App \(message)", type: TypeDialog.success)
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
    
    private func showAlertDialog(message: String, type: TypeDialog) {
        let alert = UIAlertController(title: "Register App", message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Okay", style: UIAlertAction.Style.default, handler: { [self]
            _ in
            if type == TypeDialog.success {
                let storyboard = UIStoryboard(name: "AlamofireDemo", bundle: nil)
                if let updateVC = storyboard.instantiateViewController(withIdentifier: "UpdateUserViewController") as? UpdateUserViewController {
                    updateVC.dataResponse = viewModel.getUser.value
                    self.navigationController?.pushViewController(updateVC, animated: true)
                }
            }
        }))
        self.present(alert, animated: true)
    }
}

extension RegisterUserViewController {
    enum TypeDialog {
        case error
        case success
    }
}
