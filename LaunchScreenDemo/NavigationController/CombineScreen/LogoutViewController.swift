//
//  LogoutViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 15/05/23.
//

import UIKit

class LogoutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func logoutAction(_ sender: UIButton) {
        guard let loginVC = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController") else {
            return
        }
        LoginUpdates.loginDetails.removeDetails()
        loginVC.modalPresentationStyle = .fullScreen
        loginVC.modalTransitionStyle = .flipHorizontal
        navigationController?.present(loginVC, animated: true)
    }
}

