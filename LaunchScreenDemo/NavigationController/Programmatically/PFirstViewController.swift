//
//  PFirstViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 10/05/23.
//

import UIKit

class PFirstViewController: UIViewController {
    
    //MARK: - IBoutlets
    @IBOutlet private weak var lblFullName: UILabel!
    @IBOutlet private weak var tfFirstName: UITextField!
    var receivedData: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupNavigation()
    }
    
    //MARK: - Private method
    private func setupNavigation() {
        view.backgroundColor = .brown
        navigationItem.title = "First View Controller"  
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .red
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
    
    @IBAction func goToSecondVC(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "NavigationController", bundle: nil)
        if let secondVC = storyboard.instantiateViewController(withIdentifier: "PSecondViewController") as? PSecondViewController {
            //secondVC.delegateBackward = self
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
