//
//  StackViewDemoViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 20/04/23.
//

import UIKit

class StackViewDemoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let background = UIImage(named: "background")
        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode = UIView.ContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
    }
}
