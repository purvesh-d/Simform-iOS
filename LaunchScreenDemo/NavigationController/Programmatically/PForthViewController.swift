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
        setupNavigationBar()
    }
    
    private func setupNavigationBar() {
        navigationItem.title = "Forth View Controller"
    }
    
    @IBAction func goBackToFirstVC(_ sender: UIButton) {
        delegate?.passData(data: fnameFromThird + (tfLastName.text ?? ""))
        navigationController?.popViewController(animated: true)
    }
}
