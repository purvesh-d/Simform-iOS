//
//  TableContentViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 12/04/23.
//

import UIKit

class TableContentViewController: UIViewController {

    @IBOutlet private weak var tblContents: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tblContents.register(UINib(nibName: "IndexTableViewCell", bundle: nil), forCellReuseIdentifier: "IndexTableViewCell")
        tblContents.register(UINib(nibName: "EvenTableViewCell", bundle: nil), forCellReuseIdentifier: "EvenTableViewCell")
    }
}

extension TableContentViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 20
        } else {
            return 40
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row % 2 == 0 {
            guard let evencell = tableView.dequeueReusableCell(withIdentifier: "EvenTableViewCell") as? EvenTableViewCell else {
                return UITableViewCell()
            }
            evencell.lblText.text = "Even: \(indexPath.row)"
            evencell.backgroundColor = .orange
            return evencell
        } else {
            guard let oddcell = tableView.dequeueReusableCell(withIdentifier: "IndexTableViewCell") as? IndexTableViewCell else {
                return UITableViewCell()
            }
            oddcell.lblIndex.text = "Odd: \(indexPath.row)"
            oddcell.backgroundColor = .cyan
            return oddcell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section: \(section)"
    }
  
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100
    }
}

extension TableContentViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }
}
