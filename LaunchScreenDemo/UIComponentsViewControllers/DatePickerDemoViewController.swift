//
//  DatePickerDemoViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 21/04/23.
//

import UIKit

class DatePickerDemoViewController: UIViewController, UITextFieldDelegate {
    
  
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageTextfield: UITextField!
    @IBOutlet weak var stateTextfield: UITextField!
    @IBOutlet weak var dateTextfield: UITextField!
    @IBOutlet weak var timeTextfield: UITextField!
    
    let timePicker = UIDatePicker()
    let datePicker = UIDatePicker()
    let statePicker = UIPickerView()
    let imagePicker = UIPickerView()
    
    let dateFormatter = DateFormatter()
    
    var arrayOfState = ["Andhra Pradesh","Assam", "Bihar", "Goa", "Gujarat", "Haryana", "Himachal Pradesh", "Karnataka", "Kerala", "Manipur", "Meghalaya", "Odisha", "Punjab"]
    var arrayOfImages = [UIImage(named: "background"), UIImage(named: "august"), UIImage(named: "facebook")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        statePicker.delegate = self
        statePicker.dataSource = self
        imagePicker.delegate = self
        imagePicker.dataSource = self
        
        timeTextfield.delegate = self
        dateTextfield.delegate = self
        stateTextfield.delegate = self
        imageTextfield.delegate = self
        
        timePicker.datePickerMode = .time
        timePicker.preferredDatePickerStyle = .wheels
        datePicker.datePickerMode = .date
        datePicker.preferredDatePickerStyle = .wheels
        
        setTimeData()
        setDateData()
        setStateData()
        setImageData()
    }
    
    private func setTimeData() {
        
        let toolbarDemo = UIToolbar(frame: CGRect(x: 0, y: 0, width: 300, height: 50))
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(self.timeCancelAction))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(self.timeDoneAction))
        toolbarDemo.setItems([cancelButton, spaceButton,doneButton], animated: true)
        timeTextfield.inputAccessoryView = toolbarDemo
        timeTextfield.inputView = timePicker
    }
    
    @objc func timeCancelAction() {
        timeTextfield.text = ""
        timeTextfield.resignFirstResponder()
    }
    
    @objc func timeDoneAction() {
        dateFormatter.dateFormat = "HH:mm"
        let resultOfTime = dateFormatter.string(from: timePicker.date)
        timeTextfield.text = resultOfTime
        dateTextfield.resignFirstResponder()
    }
    
    private func setDateData() {
        let toolbarDemo = UIToolbar(frame: CGRect(x: 0, y: 0, width: 300, height: 50))
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(self.dateCancelAction))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(self.dateDoneAction))
        toolbarDemo.setItems([cancelButton, spaceButton,doneButton], animated: true)
        dateTextfield.inputAccessoryView = toolbarDemo
        dateTextfield.inputView = datePicker
    }
    
    @objc func dateCancelAction() {
        dateTextfield.text = ""
        dateTextfield.resignFirstResponder()
    }
    
    @objc func dateDoneAction() {
        dateFormatter.dateFormat = "MM/dd/yy"
        let resultOfDate = dateFormatter.string(from: datePicker.date)
        dateTextfield.text = resultOfDate
        timeTextfield.resignFirstResponder()
    }
    
    private func setStateData() {
        let toolbarDemo = UIToolbar(frame: CGRect(x: 0, y: 0, width: 300, height: 50))
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(self.stateCancelAction))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(self.stateDoneAction))
        toolbarDemo.setItems([cancelButton, spaceButton,doneButton], animated: true)
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
    
    private func setImageData() {
        let toolbarDemo = UIToolbar(frame: CGRect(x: 0, y: 0, width: 300, height: 50))
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(self.imageCancelAction))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(self.imageDoneAction))
        toolbarDemo.setItems([cancelButton, spaceButton,doneButton], animated: true)
        imageTextfield.inputAccessoryView = toolbarDemo
        imageTextfield.inputView = imagePicker
    }
    
    @objc func imageCancelAction() {
        imageTextfield.resignFirstResponder()
    }
    
    @objc func imageDoneAction() {

        imageTextfield.resignFirstResponder()
    }
}

extension DatePickerDemoViewController: UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayOfState.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == statePicker {
            stateTextfield.text = arrayOfState[row]
        } else {
            imageView.image = arrayOfImages[row]
        }
    }
}

extension DatePickerDemoViewController: UIPickerViewDelegate {
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrayOfState[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        if pickerView == imageView {
            return 200
        } else {
            return 25
        }
    }
    
//    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
//        if pickerView == imagePicker {
//            let imageViewOf = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
//            let imagesOf = UIImageView(frame: CGRect(x: 0, y: 0, width: 25, height: 25))
//            imagesOf.image = arrayOfImages[row]
//            imageViewOf.addSubview(imagesOf)
//            return imageViewOf
//        }
//        let view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
//        let label = UILabel(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 50) )
//        label.textAlignment = .center
//        label.text = arrayOfState[row]
//        view.addSubview(label)
//        return view
//    }
}
