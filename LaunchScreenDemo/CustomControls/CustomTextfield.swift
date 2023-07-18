//
//  CustomTextfield.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 17/07/23.
//

import UIKit

@IBDesignable
class CustomTextfield: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
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
    var leftImage: UIImage? {
        didSet {
            leftViewMode = .always
            let imageView = UIImageView(image: leftImage?.resizedImage(to: CGSizeMake(25, 25))?.withRenderingMode(.alwaysTemplate))
            imageView.contentMode = .left
            leftView = imageView
            leftView?.tintColor = .red
        }
    }
    
    @IBInspectable
    var rightImage: UIImage? {
        didSet {
            rightViewMode = .always
            let imageView = UIImageView(image: rightImage?.resizedImage(to: CGSizeMake(25, 25))?.withRenderingMode(.alwaysTemplate))
            imageView.contentMode = .right
            rightView = imageView
            rightView?.tintColor = .red
        }
    }
    
    private let textPadding = UIEdgeInsets(top: 15, left: 45, bottom: 15, right: 45)
    
    override func leftViewRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: .init(top: 0, left: 15, bottom: 0, right: 0))
    }
    
    override func rightViewRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: .init(top: 0, left: 0, bottom: 0, right: 15))
    }
    
    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: textPadding)
    }
    
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: textPadding)
    }
    
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: textPadding)
    }
    
    private func setupView() {
        layer.cornerRadius = 10
        layer.borderWidth = 1
        layer.borderColor = UIColor.black.cgColor
    }
}
