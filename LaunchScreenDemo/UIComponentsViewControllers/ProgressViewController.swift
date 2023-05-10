//
//  ProgressViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 11/04/23.
//

import UIKit

class ProgressViewController: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet private weak var thirdProgressView: UIProgressView!
    @IBOutlet private weak var firstProgressView: UIProgressView!
    @IBOutlet private weak var secondProgressView: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupProgressview()
    }

    //MARK: - Private method
    private func setupProgressview() {
        firstProgressView.transform = firstProgressView.transform.scaledBy(x: 1, y: 8)
        firstProgressView.layer.cornerRadius = 5
        secondProgressView.tintColor = UIColor.yellow
        secondProgressView.trackTintColor = UIColor.gray
    }
    
    @IBAction func submitAction(_ sender: UIButton) {
        firstProgressView.progress += 0.4
        firstProgressView.setProgress(firstProgressView.progress, animated: true)
    }
    
    @IBAction func btnnext(_ sender: UIButton) {
        thirdProgressView.progress += 0.2
        thirdProgressView.setProgress(thirdProgressView.progress, animated: true)
    }
}
