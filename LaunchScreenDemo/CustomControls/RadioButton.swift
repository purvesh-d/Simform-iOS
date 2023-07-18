//
//  RadioButton.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 18/07/23.
//

import UIKit

class RadioButton: UIButton {
    
    @IBInspectable var isChecked: Bool = false {
        didSet {
            updateButton()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        updateButton()
    }
    
    private func updateButton() {
        let image = isChecked ? UIImage(named: "radioSelected") : UIImage(named: "radio")
        setImage(image, for: .normal)
    }
    
    @objc func buttonTapped() {
        isChecked = !isChecked
    }
}
