//
//  NewViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 07/04/23.
//

import UIKit

class NewViewController: UIViewController {

    @IBOutlet weak var barView: UIView!
    @IBOutlet weak var skyblueCircle: UIView!
    @IBOutlet weak var redCircle: UIView!
    @IBOutlet weak var blueCircle: UIView!
    @IBOutlet weak var firstImageview: UIImageView!
    @IBOutlet weak var followersView: UIView!
    @IBOutlet weak var facebookLogoView: UIView!
    @IBOutlet weak var actress: UILabel!
    @IBOutlet weak var model: UILabel!
    @IBOutlet weak var beauty: UILabel!
    @IBOutlet weak var makeup: UILabel!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var pimage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        barView.layer.cornerRadius = 10
        
        firstImageview.layer.cornerRadius = 20
        firstImageview.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        
        mainView.layer.cornerRadius = 20
        pimage.layer.cornerRadius = pimage.layer.bounds.width/2
        
        makeup.layer.masksToBounds = true
        makeup.layer.cornerRadius = 10
        
        beauty.layer.masksToBounds = true
        beauty.layer.cornerRadius = 10
       
        model.layer.masksToBounds = true
        model.layer.cornerRadius = 10
        
        actress.layer.masksToBounds = true
        actress.layer.cornerRadius = 10
        
        facebookLogoView.layer.cornerRadius = 5
        followersView.layer.cornerRadius = 25
        
        blueCircle.layer.cornerRadius = blueCircle.layer.bounds.width/2
        redCircle.layer.cornerRadius = redCircle.layer.bounds.width/2
        skyblueCircle.layer.cornerRadius = skyblueCircle.layer.bounds.width/2
        
    }

}
