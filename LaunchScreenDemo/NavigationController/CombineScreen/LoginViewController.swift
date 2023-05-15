//
//  LoginViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 15/05/23.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var tfUsername: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func loginAction(_ sender: UIButton) {
        if tfUsername.text == "vidhi" && tfPassword.text == "vidhi" {
            guard let tabbarVC = self.storyboard?.instantiateViewController(withIdentifier: "TabBarLoginViewController") else {
                return
            }
            UserDefaults.standard.set("vidhi", forKey: "password")
            tabbarVC.modalPresentationStyle = .fullScreen
            tabbarVC.modalTransitionStyle = .flipHorizontal
            navigationController?.present(tabbarVC, animated: true)
        }
    }
}
