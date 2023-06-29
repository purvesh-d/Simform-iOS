//
//  ScrollViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 26/04/23.
//

import UIKit

class ScrollViewController: UIViewController {

    @IBOutlet private weak var scrollView: UIScrollView!
    var refreshData = UIRefreshControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.refreshData  = UIRefreshControl()
        self.refreshData.addTarget(self, action: #selector(loadData), for: .valueChanged)
        scrollView.addSubview(refreshData)
        scrollView.alwaysBounceVertical = true
        scrollView.bounces = true
    }
    @objc func loadData() {
        self.refreshData.endRefreshing()
    }
}
