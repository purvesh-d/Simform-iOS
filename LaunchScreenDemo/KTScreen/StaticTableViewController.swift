//
//  StaticTableViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 05/05/23.
//

import UIKit

class StaticTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.register(UINib(nibName: "StaticTableViewCell", bundle: nil), forCellReuseIdentifier: "StaticTableViewCell")
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "StaticTableViewCell") as? StaticTableViewCell else {
                return UITableViewCell()
            }
        cell.lblName.text = "\(indexPath.row)"
        return cell
    }
}
