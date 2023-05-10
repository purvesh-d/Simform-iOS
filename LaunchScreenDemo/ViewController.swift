//
//  ViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 15/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nextCorner: UIButton!
    @IBOutlet weak var borderOf: UIView!
    
    override public var traitCollection: UITraitCollection {
        if UIDevice.current.userInterfaceIdiom == .pad && UIDevice.current.orientation.isPortrait {
            return UITraitCollection(traitsFrom:[UITraitCollection(horizontalSizeClass: .compact), UITraitCollection(verticalSizeClass: .regular)])
        }
        return super.traitCollection
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        borderOf.layer.borderWidth = 3
        borderOf.layer.borderColor = UIColor.gray.cgColor
        borderOf.layer.cornerRadius = 5

        nextCorner.layer.cornerRadius = 23
    }
}

