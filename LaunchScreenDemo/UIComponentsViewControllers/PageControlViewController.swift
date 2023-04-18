//
//  PageControlViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 11/04/23.
//

import UIKit

class PageControlViewController: UIViewController {

    @IBOutlet private weak var firstPageControl: UIPageControl!
    @IBOutlet private weak var secondPageControl: UIPageControl!
    @IBOutlet private weak var thirdPageControl: UIPageControl!
    @IBOutlet private weak var bottompagecontrol: UIPageControl!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        secondPageControl.numberOfPages = 3
        secondPageControl.currentPage = 2
        secondPageControl.currentPageIndicatorTintColor = UIColor.blue
        secondPageControl.pageIndicatorTintColor = UIColor.red
    
        secondPageControl.direction = .topToBottom
        
        thirdPageControl.preferredIndicatorImage = UIImage(named: "logo")
        thirdPageControl.preferredCurrentPageIndicatorImage = UIImage(named: "facebook")
        
    }
    
    @IBAction func pageControlChanged(_ sender: UIPageControl) {
        
        if bottompagecontrol.currentPage == 1 {
            view.backgroundColor = .orange
        } else {
            view.backgroundColor = .cyan
        }
    }
}
