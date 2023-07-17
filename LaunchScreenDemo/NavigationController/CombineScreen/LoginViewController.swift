//
//  LoginViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 15/05/23.
//

import UIKit

class LoginViewController: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet private weak var tfPassword: UITextField!
    @IBOutlet private weak var tfUsername: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func loginAction(_ sender: UIButton) {
        if tfUsername.text == "vidhi" && tfPassword.text == "vidhi" {
            guard let tabbarVC = self.storyboard?.instantiateViewController(withIdentifier: "TabBarLoginViewController") else {
                return
            }
            LoginUpdates.loginDetails.saveDetails(name: tfUsername.text ?? "", password: tfPassword.text ?? "")
            tabbarVC.modalPresentationStyle = .fullScreen
            tabbarVC.modalTransitionStyle = .flipHorizontal
            navigationController?.present(tabbarVC, animated: true)
        }
    }
}
