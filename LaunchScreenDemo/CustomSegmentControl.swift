//
//  CustomSegmentControl.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 12/04/23.
//

import UIKit

class CustomSegmentControl: UISegmentedControl {
    
    private(set) lazy var radius:CGFloat = bounds.height / 2
        
        private var segmentInset: CGFloat = 0.1{
            didSet{
                if segmentInset == 0{
                    segmentInset = 0.1
                }
            }
        }
        
        override init(items: [Any]?) {
            super.init(items: items)
            selectedSegmentIndex = 0
        }
        
        required init?(coder: NSCoder) {
    //        fatalError("init(coder:) has not been implemented")
            super.init(coder: coder)
        }
        
        
        override func layoutSubviews(){
            super.layoutSubviews()
            self.backgroundColor = .orange
            
            //MARK: - Configure Background Radius
            self.layer.cornerRadius = self.radius
            self.layer.masksToBounds = true

            //MARK: - Find selectedImageView
            let selectedImageViewIndex = numberOfSegments
            if let selectedImageView = subviews[selectedImageViewIndex] as? UIImageView
            {
                //MARK: - Configure selectedImageView Color
                selectedImageView.backgroundColor = .gray
                selectedImageView.image = nil
                
                //MARK: - Configure selectedImageView Inset with SegmentControl
                selectedImageView.bounds = selectedImageView.bounds.insetBy(dx: segmentInset, dy: segmentInset)
                
                //MARK: - Configure selectedImageView cornerRadius
                selectedImageView.layer.masksToBounds = true
                selectedImageView.layer.cornerRadius = self.radius
                
                selectedImageView.layer.removeAnimation(forKey: "SelectionBounds")

            }
           
        }
}
