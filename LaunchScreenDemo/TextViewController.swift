//
//  TextViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 10/04/23.
//

import UIKit

class TextViewController: UIViewController {

    @IBOutlet weak var biotext: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        //biotext.text = "Enter your bio here."
        biotext.layer.cornerRadius = 5
        biotext.layer.borderColor = UIColor.gray.cgColor
        biotext.layer.borderWidth = 1
        
        biotext.addDoneButtonOnKeyboard()
    }


}
