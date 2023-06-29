//
//  ScrollViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 26/04/23.
//

import UIKit

class ScrollViewController: UIViewController {

    //MARK: - IBOutlet
    @IBOutlet private weak var scrollView: UIScrollView!
    private var refreshData = UIRefreshControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        refreshData  = UIRefreshControl()
        refreshData.addTarget(self, action: #selector(loadData), for: .valueChanged)
        scrollView.addSubview(refreshData)
        scrollView.alwaysBounceVertical = true
        scrollView.bounces = true
    }
    @objc func loadData() {
        refreshData.endRefreshing()
    }
}
