//
//  TabBarDemoViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 20/04/23.
//

import UIKit

class TabBarDemoViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
        self.selectedIndex = 1
        self.tabBar.items?[1].badgeValue = "3"
    }
}

extension TabBarDemoViewController: UITabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        true
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        tabBar.items?[1].badgeValue = nil
        print("tab bar selected")
    }
    
    override func tabBar(_ tabBar: UITabBar, willBeginCustomizing items: [UITabBarItem]) {
        print("Begins customization")
    }
    
    override func tabBar(_ tabBar: UITabBar, willEndCustomizing items: [UITabBarItem], changed: Bool) {
        print("will end Customization")
    }
    
    override func tabBar(_ tabBar: UITabBar, didEndCustomizing items: [UITabBarItem], changed: Bool) {
        print("did end customization")
    }
}
