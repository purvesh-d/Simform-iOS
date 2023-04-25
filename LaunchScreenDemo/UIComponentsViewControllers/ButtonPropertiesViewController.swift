//
//  ButtonPropertiesViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 25/04/23.
//

import UIKit

class ButtonPropertiesViewController: UIViewController {

    
    @IBOutlet private weak var firstBtn: UIButton!
    @IBOutlet private weak var secondBtn: UIButton!
    @IBOutlet private weak var thirdBtn: UIButton!
    @IBOutlet private weak var fourthBtn: UIButton!
    @IBOutlet private weak var fifthBrn: UIButton!
    @IBOutlet private weak var sixthBtn: UIButton!
    @IBOutlet private weak var seventhBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpButtons()
    }
    
    func setUpButtons() {
        
        firstBtn.setTitle("Gray", for: .normal)
        firstBtn.configuration = .gray()
        firstBtn.setTitleColor(.blue, for: .normal)
        firstBtn.backgroundColor = .cyan
        firstBtn.layer.cornerRadius = 10
        
        secondBtn.setTitle("Bordered", for: .normal)
        secondBtn.configuration = .bordered()
        secondBtn.setTitleColor(.red, for: .normal)
        
        thirdBtn.setTitle("Filled", for: .normal)
        thirdBtn.configuration = .filled()
        
        fourthBtn.setTitle("Tinted", for: .normal)
        fourthBtn.configuration = .tinted()
        
        fifthBrn.setTitle("Borderless", for: .normal)
        fifthBrn.configuration = .borderless()
        
        sixthBtn.setTitle("BorderedTinted", for: .normal)
        sixthBtn.configuration = .borderedTinted()
        
        var configuration = UIButton.Configuration.plain()
        //configuration.title = "Plain"
        configuration.subtitle = "Subtitle demo"
        configuration.attributedTitle = "Plain title"
        configuration.image = UIImage(named: "facebook")
        configuration.imagePadding = 15
        configuration.titlePadding = 8
        configuration.titleAlignment = .center
        configuration.background.strokeColor = .red
        configuration.background.strokeWidth = 4.0
        seventhBtn.configuration = configuration
        seventhBtn.backgroundColor = .lightGray
    }
}
