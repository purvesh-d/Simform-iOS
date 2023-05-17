//
//  PThirdViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 10/05/23.
//

import UIKit

class PThirdViewController: UIViewController {

    //MARK: - Variables
    var fnameFromSecond = ""
    weak var delegateThird: PassDataToFirstVC?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
       setupNavigationBar()
    }
    
    //MARK: - private method
    private func setupNavigationBar() {
        navigationItem.title = "Third View Controller"
        navigationItem.backButtonTitle = "Back"
        
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .cyan
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
    
    @IBAction func goToForthVC(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "NavigationController", bundle: nil)
        if let forthVC = storyboard.instantiateViewController(withIdentifier: "PForthViewController") as? PForthViewController {
            forthVC.fnameFromThird = fnameFromSecond
            forthVC.delegate = delegateThird
            navigationController?.pushViewController(forthVC, animated: true)
        }
    }
}
