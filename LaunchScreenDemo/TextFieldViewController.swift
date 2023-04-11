//
//  TextFieldViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 10/04/23.
//

import UIKit

class TextFieldViewController: UIViewController {

    @IBOutlet weak var txtemail: CustomTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtemail.layer.cornerRadius = 5
        txtemail.layer.borderWidth = 1
        txtemail.layer.borderColor = UIColor.gray.cgColor
        
        NotificationCenter.default.addObserver(self,
             selector: #selector(keyboardWillShow),
             name: UIResponder.keyboardWillShowNotification,
             object: nil)
            
             NotificationCenter.default.addObserver(self,
             selector: #selector(self.keyboardWillHide),
             name: UIResponder.keyboardWillHideNotification,
             object: nil)
    }

    @objc func keyboardWillShow(notification: NSNotification) {
            
        guard let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue else {
           return
        }
      self.view.frame.origin.y = 0 - keyboardSize.height
    }

    @objc func keyboardWillHide(notification: NSNotification) {
      self.view.frame.origin.y = 0
    }
}

extension TextFieldViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == txtemail {
            textField.resignFirstResponder()
        }
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
}
