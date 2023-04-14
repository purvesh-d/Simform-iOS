//
//  StateTableViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 12/04/23.
//

import UIKit

class StateTableViewController: UIViewController {
    
    @IBOutlet weak var stateView: UITableView!
    let arrayOfState = StateData.getData()

    override func viewDidLoad() {
        super.viewDidLoad()

        stateView.register(UINib(nibName: "StateTableViewCell", bundle: nil), forCellReuseIdentifier: "StateTableViewCell")
        stateView.backgroundColor = .lightGray
    }
}

extension StateTableViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrayOfState.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfState[section].cityName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let temp = tableView.dequeueReusableCell(withIdentifier: "StateTableViewCell") as? StateTableViewCell else {
            return UITableViewCell()
        }
        let newData = arrayOfState[indexPath.section].cityName[indexPath.row]
        temp.lblCity.text = "\(newData)"
        return temp
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.arrayOfState[section].stateName
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
}

extension StateTableViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}
