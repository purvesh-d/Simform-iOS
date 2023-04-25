//
//  SliderViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 11/04/23.
//

import UIKit

class SliderViewController: UIViewController {

    @IBOutlet private weak var secondSlider: UISlider!
    @IBOutlet private weak var slidervolume: UISlider!
    @IBOutlet private weak var sliderlabel: UILabel!
    @IBOutlet private weak var secondlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        secondSlider.minimumValue = 0
        secondSlider.maximumValue = 50
        secondSlider.value = 15
        
        secondSlider.minimumTrackTintColor = UIColor.black
        secondSlider.maximumTrackTintColor = UIColor.gray
        secondSlider.thumbTintColor = UIColor.brown
        
        secondSlider.minimumValueImage = UIImage(systemName: "alarm.fill")
        secondSlider.maximumValueImage = UIImage(systemName: "alarm.waves.left.and.right.fill")
    }

    @IBAction func sliderValueChanged(_ sender: UISlider) {
        sliderlabel.text = "\(Int(sender.value))"
        
        if sender.value == sender.minimumValue {
            sender.minimumValueImage = UIImage(systemName: "volume.slash.fill")
        } else {
            sender.minimumValueImage = UIImage(systemName: "volume.1.fill")
        }
    }
    
    @IBAction func secondSliderValueChanged(_ sender: UISlider) {
        secondlabel.text = "\(Int(sender.value))"
    }
}
