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
    
    //MARK: - Private method
    private func setupNavigation() {
        view.backgroundColor = .brown
        navigationItem.title = "Home screen"
        navigationController?.navigationBar.tintColor = .black
        navigationController?.navigationBar.backgroundColor = .orange
    }
    
    @IBAction func goToSecondVC(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "NavigationController", bundle: nil)
        if let secondVC = storyboard.instantiateViewController(withIdentifier: "PSecondViewController") as? PSecondViewController {
            navigationController?.pushViewController(secondVC, animated: true)
        }
    }
    
    //MARK: - Unwind segue action
    @IBAction func gotoFirstVC(segue: UIStoryboardSegue) {
    }
}
