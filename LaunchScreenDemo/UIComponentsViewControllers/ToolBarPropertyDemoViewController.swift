//
//  ToolBarPropertyDemoViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 21/04/23.
//

import UIKit

class ToolBarPropertyDemoViewController: UIViewController {

    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var toolbar: UIToolbar!
    
    var arrayOfImages = [UIImage(systemName: "trash"), UIImage(systemName: "folder.fill"), UIImage(systemName: "paperplane.fill"), UIImage(systemName: "book.fill"), UIImage(systemName: "heart.fill")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let barButton = UIBarButtonItem(image: UIImage(systemName: "trash"), style: .plain, target: self, action: nil)
        toolbar.setItems([barButton], animated: true)
        
        pickerView.dataSource = self

    }
}
extension ToolBarPropertyDemoViewController: UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayOfImages.count
    }
}

