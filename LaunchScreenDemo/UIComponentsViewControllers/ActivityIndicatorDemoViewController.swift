//
//  ActivityIndicatorDemoViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 18/04/23.
//

import UIKit

class ActivityIndicatorDemoViewController: UIViewController {

    //MARK: - IBOutlet
    @IBOutlet private weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activityIndicator.color = .black
        activityIndicator.style = .large
    }
   
    //MARK: - Button Actions
    @IBAction func startActivityIndicator(_ sender: UIButton) {
        activityIndicator.startAnimating()
    }
    
    @IBAction func stopActivityIndicator(_ sender: UIButton) {
        activityIndicator.stopAnimating()
        activityIndicator.hidesWhenStopped = true
    }
}
