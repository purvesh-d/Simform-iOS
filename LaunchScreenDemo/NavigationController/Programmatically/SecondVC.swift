//
//  SecondVC.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 11/05/23.
//

import UIKit

class SecondVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
    }

    //MARK: - Private method
    private func setupNavigationBar() {
        let button1 = UIBarButtonItem(systemItem: .add)
        let button2 = UIBarButtonItem(systemItem: .search)
        let button3 = UIBarButtonItem(image: UIImage(systemName: "trash"), style: .plain, target: self, action: nil)
        navigationItem.rightBarButtonItems = [button1, button2, button3]
    }
    
    @IBAction func goToThirdVC(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "NavigationController", bundle: nil)
        if let thirdVC = storyboard.instantiateViewController(withIdentifier: "ThirdVC") as? ThirdVC {
            navigationController?.pushViewController(thirdVC, animated: true)
            
            //remove and append View Controllers from navigation stack
            /*var arrayOfVC = navigationController?.viewControllers
            arrayOfVC?.removeAll()
            arrayOfVC?.append(thirdVC)
            navigationController?.setViewControllers(arrayOfVC!, animated: true)*/
        }
    }
}
