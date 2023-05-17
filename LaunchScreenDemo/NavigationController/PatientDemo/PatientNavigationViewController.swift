//
//  PatientNavigationViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 16/05/23.
//

import UIKit

class PatientNavigationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func patientAction(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "NavigationController", bundle: nil)
        let patientVC = storyboard.instantiateViewController(withIdentifier: "PatientViewController")
        patientVC.modalPresentationStyle = .popover
        patientVC.preferredContentSize = CGSize(width: view.bounds.width/2, height: 700)
        if let popoverVC = patientVC.popoverPresentationController {
            popoverVC.sourceView = sender
        }
        navigationController?.present(patientVC, animated: true)
    }
}
