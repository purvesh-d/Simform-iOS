//
//  ThirdDemoViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 16/05/23.
//

import UIKit

class ThirdDemoViewController: UIViewController {
    
    //MARK: - StatusBar style
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .darkContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btnAction(_ sender: UIButton) {
        let firstVC = UIStoryboard(name: "NavigationController", bundle: nil).instantiateViewController(withIdentifier: "FirstViewController")
        let nav = UINavigationController(rootViewController: firstVC)
        present(nav, animated: true)
        
        //To dismis all the presented View controllers
       //view.window?.rootViewController?.dismiss(animated: true)
    }
}
