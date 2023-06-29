//
//  TextFieldViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 10/04/23.
//

import UIKit

class TextFieldViewController: UIViewController {
    
    //MARK: - IBOutlet
    @IBOutlet private weak var txtEmail: CustomTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTextfield()
    }
    
    //MARK: - Private method
    private func setupTextfield() {
        txtEmail.layer.cornerRadius = 5
        txtEmail.layer.borderWidth = 1
        txtEmail.layer.borderColor = UIColor.gray.cgColor
    }
}

//MARK: - UITextFieldDelegate
extension TextFieldViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == txtEmail {
            textField.resignFirstResponder()
        }
        print("textField Should Return")
        return true
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("TextField should begin editing method")
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("TextField did begin editing method")
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("TextField should end editing method")
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        print("TextField did end editing method")
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print("TextField should clear method")
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("should change characters in")
        return true
    }
}
