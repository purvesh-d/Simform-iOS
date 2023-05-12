//
//  PSecondViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 10/05/23.
//

import UIKit

class PSecondViewController: UIViewController {
    
    @IBOutlet private weak var lblFirstName: UILabel!
    var fname = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        lblFirstName.text = fname
        setupNavigatioBar()
        setupBarbutton()
    }
    
    //MARK: - Private methods
    private func setupNavigatioBar() {
        
        let titleLabel = UILabel()
        titleLabel.text = "Second View Controller"
        
        let titleImage = UIImageView(image: UIImage(systemName: "heart.fill"))
        let titleView = UIStackView(arrangedSubviews: [titleLabel, titleImage])
        titleView.spacing = 10
        navigationItem.titleView = titleView
    }
    
    private func setupBarbutton() {
        let button1 = UIButton()
        button1.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        button1.setTitle("Back", for: .normal)
        button1.addTarget(self, action: #selector(backAction), for: .touchUpInside)
        button1.setTitleColor(.black , for: .normal)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button1)
        
        let button2 = UIBarButtonItem(systemItem: .add)
        navigationItem.rightBarButtonItem = button2
    }
    
    @objc func backAction() {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func goToThirdVC(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "NavigationController", bundle: nil)
        if let thirdVC = storyboard.instantiateViewController(withIdentifier: "PThirdViewController") as? PThirdViewController {
            thirdVC.fnameFromSecond = fname
            navigationController?.pushViewController(thirdVC, animated: true)
        }
    }
    
    @IBAction func goToForthVC(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "NavigationController", bundle: nil)
        if let forthVC = storyboard.instantiateViewController(withIdentifier: "PForthViewController") as? PForthViewController {
            forthVC.fnameFromThird = fname
            navigationController?.pushViewController(forthVC, animated: true)
        }
    }
}
