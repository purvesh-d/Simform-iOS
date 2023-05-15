//
//  PForthViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 12/05/23.
//

import UIKit

protocol PassDataToFirstVC: AnyObject {
    func passData(data: String)
}

class PForthViewController: UIViewController {

    @IBOutlet private weak var tfLastName: UITextField!
    @IBOutlet private weak var lblFname: UILabel!
    var fnameFromThird = ""
    weak var delegate: PassDataToFirstVC?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        lblFname.text = fnameFromThird
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupNavigationBar()
    }
    
    private func setupNavigationBar() {
        
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .orange
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        navigationItem.title = "Forth View Controller"
    }
    
    @IBAction func goBackToFirstVC(_ sender: UIButton) {
        /*if let viewControllers = navigationController?.viewControllers {
            for viewController in viewControllers {
                if ((viewController as? PSecondViewController) != nil) {
                    //delegate?.passData(data: fnameFromThird + " " + (tfLastName.text ?? ""))
                    delegate?.passData(data: tfLastName.text ?? "")
                    navigationController?.popToViewController(viewController, animated: true)
                }
            }
        }*/
        delegate?.passData(data: fnameFromThird + " " + (tfLastName.text ?? ""))
        navigationController?.popToRootViewController(animated: true)
    }
}
