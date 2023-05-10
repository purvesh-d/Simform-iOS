//
//  TableDemoViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 05/05/23.
//

import UIKit

class TableDemoViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var numberOfrows = 4
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func addRow(_ sender: UIBarButtonItem) {
        numberOfrows += 1
        let insertRow = IndexPath(row: numberOfrows - 1, section: 0)
        tableView.insertRows(at: [insertRow], with: .automatic)
    }
    
    @IBAction func removeRow(_ sender: UIBarButtonItem) {

        guard numberOfrows > 0 else {
            return
        }
        numberOfrows -= 1
        let deleteRow = IndexPath(row: numberOfrows, section: 0)
        tableView.deleteRows(at: [deleteRow], with: .automatic)
    }
}

extension TableDemoViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfrows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "DataTableViewCell") as? DataTableViewCell else {
            return UITableViewCell()
        }
        cell.lblName.text = "\(indexPath.row + 1)"
        return cell
    }
}
