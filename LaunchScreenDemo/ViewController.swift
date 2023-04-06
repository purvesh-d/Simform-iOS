//
//  ViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 15/02/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonCorners: UIButton!
    @IBOutlet weak var BorderDemo: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        BorderDemo.layer.borderWidth = 1
        BorderDemo.layer.borderColor = UIColor.gray.cgColor
        BorderDemo.layer.cornerRadius = 5
        
        buttonCorners.layer.cornerRadius = 23
    }
    
}

