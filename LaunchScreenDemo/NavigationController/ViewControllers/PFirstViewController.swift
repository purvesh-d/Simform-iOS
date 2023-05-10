//
//  PFirstViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 10/05/23.
//

import UIKit

class PFirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigation()
    }
    
    private func setupNavigation() {
        view.backgroundColor = .brown
        navigationItem.title = "Home"
    }
    
    @IBAction func goToSecondVC(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "NavigationController", bundle: nil)
        let secondVC = storyboard.instantiateViewController(withIdentifier: "PSecondViewController") as! PSecondViewController
        navigationController?.pushViewController(secondVC, animated: true)
    }
}
