//
//  SegueSecondViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 25/04/23.
//

import UIKit

class SegueSecondViewController: UIViewController {

    //MARK: - IBOutlet
    @IBOutlet private weak var lblBackData: UILabel!
    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblBackData.text = "Name: \(name ?? "")"
    }
    
}
