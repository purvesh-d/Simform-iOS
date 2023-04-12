//
//  StateTableViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 12/04/23.
//

import UIKit

class StateTableViewController: UIViewController {
    
    @IBOutlet weak var stateView: UITableView!
    
    let sectionTitle = ["Arizona", "California", "Florida", "New York", "Texas"]
    let data = [["Globe", "Phoenix"],
                ["Corona", "Indio", "San Diego", "San Francisco"],
                ["Lake City", "Orlando", "Venice"],
                ["New York City", "Queens"],
                ["Austin", "McAllen", "Paris"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        stateView.register(UINib(nibName: "StateTableViewCell", bundle: nil), forCellReuseIdentifier: "StateTableViewCell")
    }

}

extension StateTableViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionTitle.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let comp = tableView.dequeueReusableCell(withIdentifier: "StateTableViewCell") as? StateTableViewCell else {
            return UITableViewCell()
        }
        let newData = data[indexPath.section][indexPath.row]
        comp.lblCity.text = newData
        return comp
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.sectionTitle[section]
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let sectionView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: stateView.frame.size.width, height: 70))
        sectionView.backgroundColor = .lightGray
        return sectionView
    }
}

extension StateTableViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}
