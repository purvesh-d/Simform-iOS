//
//  ToolBarPropertyDemoViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 21/04/23.
//

import UIKit

class ToolBarPropertyDemoViewController: UIViewController {

    @IBOutlet private weak var toolbar: UIToolbar!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let barButton = UIBarButtonItem(image: UIImage(systemName: "trash"), style: .plain, target: self, action: nil)
        toolbar.setItems([barButton], animated: true)
    }
}
