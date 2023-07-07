//
//  UpdateUserViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 04/07/23.
//

import UIKit
class UpdateUserViewController: UIViewController {
    
    //MARK: - IBOUtlets
    @IBOutlet private weak var deleteBtn: UIButton!
    @IBOutlet private weak var updateBtn: UIButton!
    @IBOutlet private weak var idTf: UITextField!
    @IBOutlet private weak var passwordTf: UITextField!
    @IBOutlet private weak var emailTf: UITextField!
    @IBOutlet private weak var usernameTf: UITextField!
    @IBOutlet private weak var cardView: UIView!
    
    // MARK: - Vars
    private var viewModel: UpdateUserViewModel = UpdateUserViewModel()
    var dataResponse: GetUserResponse?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        cardView.layer.cornerRadius = 20
        setUpUI()
    }
    
    // MARK:- Private methods
    private func setUpUI() {
        updateUI()
        bindViewModel()
        bindUpdateUI()
    }
    
    private func bindViewModel() {
        viewModel.validationError.bind {
            message in
            print("Message \(message)")
        }
    }
    
    private func bindUpdateUI() {
        viewModel.updateSuccess.bind {
            self.showAlertDialog(message: "Profile Updated")
        }
        
        viewModel.deleteSuccess.bind {
            self.showAlertDialog(message: "Profile Deleted.")
            self.clearTextField()
        }
    }
    
    private func updateUI() {
        idTf.text = dataResponse?.id
        idTf.allowsEditingTextAttributes = false
        usernameTf.text = dataResponse?.username
        emailTf.text = dataResponse?.email
        passwordTf.text = dataResponse?.password
    }
    
    private func clearTextField() {
        idTf.text = ""
        usernameTf.text = ""
        emailTf.text = ""
        passwordTf.text = ""
    }
    
    // MARK: - Button actions
    @IBAction func updateBtnAction(_ sender: UIButton) {
        if let username = usernameTf.text, let email = emailTf.text, let password = passwordTf.text {
            viewModel.callUpdateApi(username: username, email: email, password: password)
        }
    }
    
    @IBAction func deleteBtnAction(_ sender: UIButton) {
        if let username = usernameTf.text, let email = emailTf.text, let password = passwordTf.text {
            viewModel.callDeleteApi(username: username, email: email, password: password)
        }
    }
    
    @IBAction func patchBtnAction(_ sender: UIButton) {
        viewModel.callPatchApi()
    }
    
    // MARK: - Show Alert dialog
    private func showAlertDialog(message: String) {
        let alert = UIAlertController(title: "Demo App", message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Okay", style: UIAlertAction.Style.default))
        self.present(alert, animated: true)
    }
}
