//
//  PageControlViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 11/04/23.
//

import UIKit

class PageControlViewController: UIViewController {

    @IBOutlet weak var firstPageControl: UIPageControl!
    @IBOutlet weak var bottompagecontrol: UIPageControl!
    @IBOutlet weak var thirdpagecontrol: UIPageControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        thirdpagecontrol.numberOfPages = 3
        thirdpagecontrol.currentPage = 2
        thirdpagecontrol.currentPageIndicatorTintColor = UIColor.blue
        thirdpagecontrol.pageIndicatorTintColor = UIColor.red
    
        thirdpagecontrol.direction = .topToBottom
    }
    
    @IBAction func firstAction(_ sender: UIPageControl) {
        if sender.isSelected {
            
        }
    }
    
    @IBAction func pageControlChanged(_ sender: UIPageControl) {
        
        if bottompagecontrol.currentPage == 1 {
            view.backgroundColor = .orange
        } else {
            view.backgroundColor = .cyan
        }
    }
}
