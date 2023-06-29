//
//  FirstViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 10/05/23.
//

import UIKit

class FirstViewController: UIViewController {

    //MARK: - IBOutlet
    @IBOutlet private weak var tfName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Unwind segue action
    @IBAction func goToFirstVC(segue: UIStoryboardSegue) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let secondVC = segue.destination as? SecondViewController else { return }
        secondVC.name = tfName.text
    }
}
