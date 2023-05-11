//
//  SecondViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 10/05/23.
//

import UIKit

class SecondViewController: UIViewController {

    //MARK: - IBOutlet
    @IBOutlet private weak var lblName: UILabel!
    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblName.text = name ?? " "
    }
}
