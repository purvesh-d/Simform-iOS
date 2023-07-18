//
//  CustomControlsViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 17/07/23.
//

import UIKit

class CustomControlsViewController: UIViewController {

    // MARK: - IBOutlets and Let
    @IBOutlet private weak var maleRadioBtn: RadioButton!
    @IBOutlet private weak var femaleRadioBtn: RadioButton!
    private let rangeSlider = CustomRangeSlider(frame: .zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    // MARK: - Radio button actions
    @IBAction func maleRadioBtnAction(_ sender: RadioButton) {
        femaleRadioBtn.isChecked = maleRadioBtn.isChecked
    }
    
    @IBAction func femaleRadioBtnAction(_ sender: RadioButton) {
        maleRadioBtn.isChecked = femaleRadioBtn.isChecked
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
}
