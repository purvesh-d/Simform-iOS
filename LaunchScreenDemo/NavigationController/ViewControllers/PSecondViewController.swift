//
//  PSecondViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 10/05/23.
//

import UIKit

class PSecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        setupBarbutton()
    }
    
    private func setupBarbutton() {
        
        let button1 = UIButton()
        button1.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        button1.setTitle("Back", for: .normal)
        button1.addTarget(self, action: #selector(backAction), for: .touchUpInside)
        button1.setTitleColor(.tintColor, for: .normal)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button1)
    }
    
    @objc func backAction() {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func goToThirdVC(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "NavigationController", bundle: nil)
        let thirdVC = storyboard.instantiateViewController(withIdentifier: "PThirdViewController") as! PThirdViewController
        navigationController?.present(thirdVC, animated: true)
    }
    
 }
