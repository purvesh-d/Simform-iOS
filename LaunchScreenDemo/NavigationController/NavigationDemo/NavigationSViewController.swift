//
//  NavigationSViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 17/05/23.
//

import UIKit

class NavigationSViewController: UINavigationController {
    
    //MARK: - StatusBar style
    override var childForStatusBarStyle: UIViewController? {
        topViewController
    }
}
