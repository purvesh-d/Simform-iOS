//
//  CustomControlsViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 17/07/23.
//

import UIKit

class CustomControlsViewController: UIViewController {

    // MARK: - Let
    private let rangeSlider = CustomRangeSlider(frame: .zero)
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    // MARK: - Private method
    private func setupViews() {
        rangeSlider.backgroundColor = .red
        view.addSubview(rangeSlider)
    }
    
    override func viewDidLayoutSubviews() {
        let margin: CGFloat = 20
        let width = view.bounds.width - 2 * margin
        let height: CGFloat = 30
        rangeSlider.frame = CGRect(x: 0, y: 0, width: width, height: height)
        rangeSlider.center = view.center
    }
    
    @IBAction func buttonAction(_ sender: UIButton) {
        print("Button Tapped.")
    }
}
