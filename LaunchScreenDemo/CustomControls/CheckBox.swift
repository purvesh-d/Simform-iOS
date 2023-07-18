//
//  CheckBox.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 18/07/23.
//

import UIKit

class CheckBox: UIButton {
    
    var isChecked: Bool = false {
        didSet {
            updateButton()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        updateButton()
    }
    
    @objc func buttonTapped() {
        isChecked = !isChecked
    }
    
    private func updateButton() {
        let image = isChecked ? UIImage(named: "checkbox") : UIImage(named: "square")
        setImage(image, for: .normal)
    }
}
