//
//  SegmentedViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 11/04/23.
//

import UIKit

class SegmentedViewController: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet private weak var lastSegment: UISegmentedControl!
    @IBOutlet private weak var thirdSegmentedControl: UISegmentedControl!
    @IBOutlet private weak var dataview: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        thirdSegmentedControl.setDividerImage(UIImage(systemName: "trash.fill"), forLeftSegmentState: .normal, rightSegmentState: .normal, barMetrics: .default)
    }
    
    @IBAction func secondSegmentedControl(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            dataview.text = "Travelling time via car will be 1 hour"
        case 1:
            dataview.text = "Travelling time via bycicle will be 1:30 hour"
        case 2:
            dataview.text = "Travelling time via walking will be 2 hour"
        case 3:
            dataview.text = "Travelling time via bus will be 1:30 hour"
        default:
            print("default case")
        }
    }
}
