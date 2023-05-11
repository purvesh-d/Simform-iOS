//
//  CustomSegue.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 11/05/23.
//

import UIKit

class CustomSegue: UIStoryboardSegue {
    
    override init(identifier: String?, source: UIViewController, destination: UIViewController) {
        super.init(identifier: identifier, source: source, destination: destination)
    }
    
    override func perform() {
        if let firstVC = source.view, let secondVC = destination.view {
            let screenWidth = UIScreen.main.bounds.width
            let screenHeight = UIScreen.main.bounds.height
            
            secondVC.frame = CGRect(x: 0, y: screenHeight, width: screenWidth, height: screenHeight)
            let window = UIApplication.shared.keyWindow
            window?.insertSubview(secondVC, aboveSubview: firstVC)
            
            UIView.animate(withDuration: 0.5) {
                firstVC.frame = firstVC.frame.offsetBy(dx: 0, dy: -screenHeight)
            } completion: { (finish) in
                self.source.present(self.destination, animated: false)
            }
        }
    }
}
