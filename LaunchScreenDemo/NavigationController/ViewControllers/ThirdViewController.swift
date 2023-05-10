//
//  ThirdViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 10/05/23.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func goBackFirstVC(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
