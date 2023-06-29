//
//  ButtonViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 10/04/23.
//

import UIKit

class ButtonViewController: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet private weak var camerabtn: UIButton!
    @IBOutlet private weak var nextbtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButton()
    }
    
    //MARK: - Private method
    private func setupButton() {
        nextbtn.layer.cornerRadius = 5
        nextbtn.backgroundColor = UIColor.gray
        nextbtn.layer.borderWidth = 1
        nextbtn.layer.borderColor = UIColor.black.cgColor
        
        camerabtn.layer.cornerRadius = 5
        camerabtn.backgroundColor = UIColor.gray
        camerabtn.layer.borderWidth = 1
        camerabtn.layer.borderColor = UIColor.black.cgColor
    }
    
    //MARK: - Button Action
    @IBAction func tapaction(_ sender: UIButton) {
        print("It works")
    }
}
