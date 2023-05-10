//
//  LabelViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 10/04/23.
//

import UIKit

class LabelViewController: UIViewController {
    
    //MARK: - IBOutlet
    @IBOutlet private weak var labelhello: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpLabel()
    }
    
    //MARK: - private method
    private func setUpLabel() {
        labelhello.backgroundColor = UIColor.black
        labelhello.textColor = UIColor.white
        labelhello.textAlignment = .center
        labelhello.font = .boldSystemFont(ofSize: 20)
        
        labelhello.clipsToBounds = true
        labelhello.layer.cornerRadius = 5
    }
}
