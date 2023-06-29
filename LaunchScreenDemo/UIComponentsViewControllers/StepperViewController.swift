//
//  StepperViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 11/04/23.
//

import UIKit

class StepperViewController: UIViewController {

    @IBOutlet private weak var firstStepper: UIStepper!
    @IBOutlet private weak var thirdStepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        thirdStepper.minimumValue = 1
        thirdStepper.maximumValue = 50
        thirdStepper.value = 2
        thirdStepper.stepValue = 10
        
        firstStepper.setIncrementImage(UIImage(named: "facebook"), for: .normal)
        firstStepper.setDecrementImage(UIImage(named: "google"), for: .normal)
    }

    @IBAction func firstStepper(_ sender: UIStepper) {
        print(sender.value)
    }
   
    @IBAction func secondStepper(_ sender: UIStepper) {
        print(sender.value)
    }
    
    @IBAction func thirdStepper(_ sender: UIStepper) {
        print(sender.value)
    }
    
    @IBAction func wrapStepper(_ sender: UIStepper) {
        print(sender.value)
    }
}
