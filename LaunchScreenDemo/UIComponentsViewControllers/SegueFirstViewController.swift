//
//  SegueFirstViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 25/04/23.
//

import UIKit

class SegueFirstViewController: UIViewController {

    //MARK: - IBOutlet
    @IBOutlet private weak var tfName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let firstVC = segue.destination as? SegueSecondViewController else { return }
        firstVC.name = tfName.text
    }
}
