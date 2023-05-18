//
//  PForthViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 12/05/23.
//

import UIKit

//MARK: - Protocol for backward data passing
protocol PassDataToFirstVC: AnyObject {
    func passData(data: String)
}

class PForthViewController: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet private weak var tfLastName: UITextField!
    @IBOutlet private weak var lblFname: UILabel!
    var fnameFromThird = ""
    weak var delegate: PassDataToFirstVC?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        lblFname.text = fnameFromThird
        navigationItem.title = "Forth View Controller"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupNavigationBar()
    }
    
    //MARK: - Private method
    private func setupNavigationBar() {
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .orange
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
    
    @IBAction func goBackToFirstVC(_ sender: UIButton) {
        if let viewControllers = navigationController?.viewControllers {
            for viewController in viewControllers {
                if viewController.isKind(of: PFirstViewController.self) {
                    delegate?.passData(data: fnameFromThird + " " + (tfLastName.text ?? ""))
                    navigationController?.popToViewController(viewController, animated: true)
                }
            }
        }
    }
}
