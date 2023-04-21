//
//  PickerDemoViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 21/04/23.
//

import UIKit

class PickerDemoViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var countryTextfield: UITextField!
    @IBOutlet weak var stateTextfield: UITextField!
    
    let countryPicker = UIPickerView()
    let statePicker = UIPickerView()
    
    var arrayOfCountry = ["Armenia", "Azerbaijan", "Iran", "Israel", "India", "Oman", "Qatar", "Saudi Arabia", "Korea (North)", "Korea (South)", "United States", "Japan"]
    var arrayOfState = ["Andhra Pradesh","Assam", "Bihar", "Goa", "Gujarat", "Haryana", "Himachal Pradesh", "Karnataka", "Kerala", "Manipur", "Meghalaya", "Odisha", "Punjab"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countryPicker.delegate = self
        countryPicker.dataSource = self
        statePicker.delegate = self
        statePicker.dataSource = self
        
        countryTextfield.delegate = self
        stateTextfield.delegate = self
        
        setCountryData()
        setStateData()
    }
    
    private func setCountryData() {
        
        let toolbarDemo = UIToolbar(frame: CGRect(x: 0, y: 0, width: 300, height: 50))
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(self.countryCancelAction))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(self.countryDoneAction))
        toolbarDemo.setItems([cancelButton, spaceButton,doneButton], animated: true)
        toolbarDemo.isUserInteractionEnabled = true
        countryTextfield.inputAccessoryView = toolbarDemo
        countryTextfield.inputView = countryPicker
    }
    
    @objc func countryCancelAction() {
        countryTextfield.text = ""
        countryTextfield.resignFirstResponder()
    }
    
    @objc func countryDoneAction() {
        countryTextfield.resignFirstResponder()
    }
    
    private func setStateData() {
        
        let toolbarDemo = UIToolbar(frame: CGRect(x: 0, y: 0, width: 300, height: 50))
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(self.stateCancelAction))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(self.stateDoneAction))
        toolbarDemo.setItems([cancelButton, spaceButton,doneButton], animated: true)
        toolbarDemo.isUserInteractionEnabled = true
        stateTextfield.inputAccessoryView = toolbarDemo
        stateTextfield.inputView = statePicker
    }
    
    @objc func stateCancelAction() {
        
        stateTextfield.text = ""
        stateTextfield.resignFirstResponder()
    }
    
    @objc func stateDoneAction() {
        
        stateTextfield.resignFirstResponder()
    }
}

extension PickerDemoViewController: UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == countryPicker {
            return arrayOfCountry.count
        } else {
            return arrayOfState.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == countryPicker {
            countryTextfield.text = arrayOfCountry[row]
        } else {
            stateTextfield.text = arrayOfState[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 50
    }
}

extension PickerDemoViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if pickerView == countryPicker {
            return arrayOfCountry[row]
        } else {
            return arrayOfState[row]
        }
    }
}
