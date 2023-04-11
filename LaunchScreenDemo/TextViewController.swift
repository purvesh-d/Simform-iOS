//
//  TextViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 10/04/23.
//

import UIKit

class TextViewController: UIViewController {

    @IBOutlet weak var txtbio: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        //biotext.text = "Enter your bio here."
        txtbio.layer.cornerRadius = 5
        txtbio.layer.borderColor = UIColor.gray.cgColor
        txtbio.layer.borderWidth = 1
        
        txtbio.addDoneButtonOnKeyboard()
    }


}
