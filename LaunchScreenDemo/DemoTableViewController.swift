//
//  DemoTableViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 13/04/23.
//

import UIKit

class DemoTableViewController: UIViewController {

    @IBOutlet weak var dataView: UITableView!
    
    struct DemoData {
        var sectionName: String
        var dataName: [String]
    }
    
    var arrayOfData = [DemoData(sectionName: "Fruits", dataName: ["Apple", "Banana", "Mango", "Watermelon"]),
                        DemoData(sectionName: "Colors", dataName: ["Black", "Green", "Yellow", "white", "blue"])]
    
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
        
        if indexPath.section == 0 {
            guard let tempFruit = tableView.dequeueReusableCell(withIdentifier: "DemoTableViewCell") as? DemoTableViewCell else {
                return UITableViewCell()
            }
            let newData = arrayOfData[indexPath.section].dataName[indexPath.row]
            tempFruit.dataLabel.text = "\(newData)"
            return tempFruit
        } else if indexPath.section == 1 {
            guard let tempColor = tableView.dequeueReusableCell(withIdentifier: "ColorTableViewCell") as? ColorTableViewCell else {
                return UITableViewCell()
            }
            let newColor = arrayOfData[indexPath.section].dataName[indexPath.row]
            tempColor.colorLabel.text = "\(newColor)"
            return tempColor
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arrayOfData[section].sectionName
    }
}

extension DemoTableViewController: UITableViewDelegate {

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 1 {
            if let data = tableView.cellForRow(at: indexPath as IndexPath) as? ColorTableViewCell{
                data.btnSelect.isSelected = true
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
    
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        if indexPath.section == 1 {
            return indexPath
        }
        return nil
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if indexPath.section == 0 {
            if editingStyle == .delete {
                
                arrayOfData[indexPath.section].dataName.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
        }
    }
}
