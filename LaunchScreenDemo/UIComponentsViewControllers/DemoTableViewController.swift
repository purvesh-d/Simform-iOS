//
//  DemoTableViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 13/04/23.
//

import UIKit

class DemoTableViewController: UIViewController {

    @IBOutlet weak var dataView: UITableView!
    var arrayOfData = DemoData.getData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension DemoTableViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrayOfData.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfData[section].dataName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let tempColor = tableView.dequeueReusableCell(withIdentifier: "ColorTableViewCell") as? ColorTableViewCell,
            let tempFruit = tableView.dequeueReusableCell(withIdentifier: "DemoTableViewCell") as? DemoTableViewCell,
            let dataOfLabel = tableView.dequeueReusableCell(withIdentifier: "LabelExpandTableViewCell") as? LabelExpandTableViewCell else {
            return UITableViewCell()
        }
        if indexPath.section == 0 {
            let newData = arrayOfData[indexPath.section].dataName[indexPath.row]
            tempFruit.dataLabel.text = "\(newData)"
            return tempFruit
        } else if indexPath.section == 1 {
            let newColor = arrayOfData[indexPath.section].dataName[indexPath.row]
            tempColor.colorLabel.text = "\(newColor)"
            return tempColor
        } else if indexPath.section == 2 {
            let newLabel = arrayOfData[indexPath.section].dataName[indexPath.row]
            dataOfLabel.lblOfData.text = "\(newLabel)"
            dataOfLabel.lblOfData.numberOfLines = 2
            return dataOfLabel
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arrayOfData[section].sectionName
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 91
    }
}

extension DemoTableViewController: UITableViewDelegate {

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 1 {
            if let data = tableView.cellForRow(at: indexPath as IndexPath) as? ColorTableViewCell{
                data.btnSelect.isSelected = true
            }
        }

        if indexPath.section == 2 {
            
            if let dataOfLabel = tableView.cellForRow(at: indexPath as IndexPath) as? LabelExpandTableViewCell {
                dataOfLabel.lblOfData.numberOfLines = 0
            }
        }
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        if indexPath.section == 1 {
            if let data = tableView.cellForRow(at: indexPath as IndexPath) as? ColorTableViewCell {
                data.btnSelect.isSelected = false
            }
        }
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
                
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { [self] (_, _, completionHandler) in
            self.arrayOfData[indexPath.section].dataName.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
        deleteAction.image = UIImage(systemName: "trash")
        deleteAction.backgroundColor = .systemRed
        let configuration = UISwipeActionsConfiguration(actions: [deleteAction])
        return configuration
    }
}
