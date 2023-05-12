//
//  PThirdViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 10/05/23.
//

import UIKit

class PThirdViewController: UIViewController {

    var fnameFromSecond = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        setupNavigationBar()
    }
    
    private func setupNavigationBar() {
        navigationItem.title = "Third View Controller"
        navigationItem.backButtonTitle = "Back"
    }
    
    @IBAction func goToForthVC(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "NavigationController", bundle: nil)
        if let forthVC = storyboard.instantiateViewController(withIdentifier: "PForthViewController") as? PForthViewController {
            forthVC.fnameFromThird = fnameFromSecond
            navigationController?.pushViewController(forthVC, animated: true)
        }
    }
}
