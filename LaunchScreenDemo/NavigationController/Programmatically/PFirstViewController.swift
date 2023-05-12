//
//  PFirstViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 10/05/23.
//

import UIKit

class PFirstViewController: UIViewController {
    
    @IBOutlet private weak var lblFullName: UILabel!
    @IBOutlet private weak var tfFirstName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigation()
    }
    
    //MARK: - Private method
    private func setupNavigation() {
        view.backgroundColor = .brown
        navigationItem.title = "First View Controller"
        UINavigationBar.appearance().backgroundColor = .green
    }
    
    @IBAction func goToSecondVC(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "NavigationController", bundle: nil)
        if let secondVC = storyboard.instantiateViewController(withIdentifier: "PSecondViewController") as? PSecondViewController {
            secondVC.fname = tfFirstName.text ?? " "
            navigationController?.pushViewController(secondVC, animated: true)
        }
    }
}

extension PFirstViewController: PassDataToFirstVC {
    func passData(data: String) {
        lblFullName.text = data
    }
}
