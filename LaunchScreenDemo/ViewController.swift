//
//  ViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 15/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nextCorner: UIButton!
    @IBOutlet weak var borderOf: UIView!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        borderOf.layer.borderWidth = 3
        borderOf.layer.borderColor = UIColor.gray.cgColor
        borderOf.layer.cornerRadius = 5

        nextCorner.layer.cornerRadius = 23
    }
}

