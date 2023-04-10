//
//  TextFieldViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 10/04/23.
//

import UIKit

class TextFieldViewController: UIViewController {

   
    @IBOutlet weak var emailtext: CustomTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailtext.layer.cornerRadius = 5
        emailtext.layer.borderWidth = 1
        emailtext.layer.borderColor = UIColor.gray.cgColor

    }
}

extension TextFieldViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == emailtext {
            textField.resignFirstResponder()
        }
        return true
    }
}
