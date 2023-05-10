//
//  TableContentViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 12/04/23.
//

import UIKit

class TableContentViewController: UIViewController {

    //MARK: - IBOutlet
    @IBOutlet private weak var tblContents: UITableView!
    private var evenRow = 20
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tblContents.register(UINib(nibName: "IndexTableViewCell", bundle: nil), forCellReuseIdentifier: "IndexTableViewCell")
        tblContents.register(UINib(nibName: "EvenTableViewCell", bundle: nil), forCellReuseIdentifier: "EvenTableViewCell")
    }
}

//MARK: - UITableViewDataSource
extension TableContentViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return evenRow
        } else {
            return 40
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let oddcell = tableView.dequeueReusableCell(withIdentifier: "IndexTableViewCell") as? IndexTableViewCell else {
            return UITableViewCell()
        }
        guard let evencell = tableView.dequeueReusableCell(withIdentifier: "EvenTableViewCell") as? EvenTableViewCell else {
            return UITableViewCell()
        }
        if indexPath.row % 2 == 0 {
            evencell.lblText.text = "Even: \(indexPath.row)"
            evencell.backgroundColor = .orange
            return evencell
        } else {
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

//MARK: - UITableViewDelegate
extension TableContentViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        evenRow = 50
        print(evenRow)
    }
}
