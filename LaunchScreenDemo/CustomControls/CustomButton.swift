//
//  CustomButton.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 17/07/23.
//

import UIKit

@IBDesignable
class CustomButton: UIButton {
    
    // MARK: - Button properties
    @IBInspectable
    var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }
    
    @IBInspectable
    var borderColor: UIColor {
        set {
            layer.borderColor = newValue.cgColor
        }
        get {
            return UIColor(cgColor: layer.borderColor!)
        }
    }
    
    @IBInspectable
    var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }
    
    @IBInspectable
    var isPrimary: Bool = false {
        didSet {
            isPrimary ? filledButton() : outlinedButton()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        updateView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        updateView()
    }
    
    // MARK: - Private methods
    private func updateView() {
        layer.cornerRadius = 10
        layer.borderWidth = 3
        layer.borderColor = UIColor.blue.cgColor
        isPrimary ? filledButton() : outlinedButton()
        addTarget(self, action: #selector(togglePrimary), for: .touchUpInside)
    }
    
    private func filledButton() {
        layer.borderWidth = 0
        backgroundColor = tintColor
        setTitleColor(.white, for: .normal)
        setTitle("Filled", for: .normal)
    }
    
    private func outlinedButton() {
        layer.borderWidth = 1
        layer.borderColor = tintColor.cgColor
        backgroundColor = .clear
        setTitleColor(tintColor, for: .normal)
        setTitle("Outlined", for: .normal)
    }
    
    @objc
    private func togglePrimary() {
        isPrimary.toggle()
    }
}
