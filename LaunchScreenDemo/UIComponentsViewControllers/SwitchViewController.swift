//
//  SwitchViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 10/04/23.
//

import UIKit

class SwitchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    @IBAction func switchon(_ sender: UISwitch) {
        if sender.isOn {
            view.backgroundColor = .gray
        } else {
            view.backgroundColor = .brown
        }
    }
    
}
