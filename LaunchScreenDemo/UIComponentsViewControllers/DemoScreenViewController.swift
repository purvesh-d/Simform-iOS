//
//  DemoScreenViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 02/05/23.
//

import UIKit

class DemoScreenViewController: UIViewController {

    @IBOutlet private weak var dotImageView: UIView!
    @IBOutlet private weak var musicView: UIView!
    @IBOutlet private weak var profileImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    private func setupUI() {
        profileImage.layer.cornerRadius = profileImage.frame.size.width/2
        musicView.layer.cornerRadius = 10
        dotImageView.layer.cornerRadius = dotImageView.frame.size.width/2
    }
}
