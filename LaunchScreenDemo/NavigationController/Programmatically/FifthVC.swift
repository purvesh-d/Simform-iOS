//
//  FifthVC.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 11/05/23.
//

import UIKit

class FifthVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func goBackToSecondVC(_ sender: UIButton) {
        if let viewControllers = navigationController?.viewControllers {
            for viewController in viewControllers {
                if viewController.isKind(of: SecondVC.self) {
                    navigationController?.popToViewController(viewController, animated: true)
                    break
                }
            }
        }
    }
    
    @IBAction func goBackToRootVC(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
}
