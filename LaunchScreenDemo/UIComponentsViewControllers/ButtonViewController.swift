//
//  ButtonViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 10/04/23.
//

import UIKit

class ButtonViewController: UIViewController {

    @IBOutlet weak var camerabtn: UIButton!
    @IBOutlet weak var nextbtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextbtn.layer.cornerRadius = 5
        nextbtn.backgroundColor = UIColor.gray
        nextbtn.layer.borderWidth = 1
        nextbtn.layer.borderColor = UIColor.black.cgColor
        
        camerabtn.layer.cornerRadius = 5
        camerabtn.backgroundColor = UIColor.gray
        camerabtn.layer.borderWidth = 1
        camerabtn.layer.borderColor = UIColor.black.cgColor
    }
    
    @IBAction func tapaction(_ sender: UIButton) {
        print("It works")
    }
}
