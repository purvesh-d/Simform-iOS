//
//  ForthVC.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 11/05/23.
//

import UIKit

class ForthVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }

    @IBAction func goToSpecificVC(_ sender: UIButton) {
        if let viewControllers = navigationController?.viewControllers {
            for viewController in viewControllers {
                if viewController.isKind(of: SecondVC.self) {
                    navigationController?.popToViewController(viewController, animated: true)
                    break
                }
            }
        }
    }
    
    @IBAction func goToRootVC(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
}
