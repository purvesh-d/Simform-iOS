//
//  TextViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 10/04/23.
//

import UIKit

class TextViewController: UIViewController {

    //MARK: - IBOutlet
    @IBOutlet private weak var txtbio: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTextView()
    }
    
    //MARK: - Private method
    private func setupTextView() {
        txtbio.layer.cornerRadius = 5
        txtbio.layer.borderColor = UIColor.gray.cgColor
        txtbio.layer.borderWidth = 1
        
        let attributedString = NSMutableAttributedString(string: "Tap Me for Simform Solurions")
        let url = URL(string: "https://lms.simformsolutions.com/course/view.php?id=12")
        attributedString.setAttributes([.link: url ?? "https://www.google.com/"], range: NSRange(location: 0, length: 6))
        txtbio.attributedText = attributedString
    }
}
