//
//  DemoTableViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 13/04/23.
//

import UIKit

class DemoTableViewController: UIViewController, ExpandLabelProtocol {
    
    //MARK: - IBOutlet
    @IBOutlet private weak var dataView: UITableView!
    private var arrayOfData = DemoData.getData()
    private var refreshData: UIRefreshControl!
    
    //MARK: - Protocol conform method
    func expandLabel(indexPath: IndexPath?) {
        if let index = indexPath {
            arrayOfData[index.row].isExpand.toggle()
            dataView.reloadRows(at: [index], with: .automatic)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pulltoRefresh()
    }
    
    //MARK: - private method
    private func pulltoRefresh() {
        refreshData = UIRefreshControl()
        refreshData.backgroundColor = .red
        refreshData.tintColor = .yellow
        refreshData.addTarget(self, action: #selector(loadData), for: .valueChanged)
        dataView.addSubview(refreshData)
        dataView.alwaysBounceVertical = true
        dataView.bounces = true
    }
    
    @objc func loadData() {
        refreshData.endRefreshing()
    }
}

//MARK: - UITableViewDataSource
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
        } else if indexPath.section == 2 {
            guard let dataOfLabel = tableView.dequeueReusableCell(withIdentifier: "LabelExpandTableViewCell") as? LabelExpandTableViewCell else {
                return UITableViewCell()
            }
            let newLabel = arrayOfData[indexPath.section].dataName[indexPath.row]
            dataOfLabel.btnOfData.isSelected = self.arrayOfData[indexPath.row].isExpand
            dataOfLabel.lblOfData.numberOfLines =  dataOfLabel.btnOfData.isSelected ? 0 : 2
            dataOfLabel.lblOfData.text = "\(newLabel)"
            dataOfLabel.delegate = self
            dataOfLabel.indexPath = indexPath
            
            // using closure
            /*dataOfLabel.expandLabel = {
                self.arrayOfData[indexPath.row].isExpand.toggle()
                tableView.reloadRows(at: [indexPath], with: .automatic)
            }*/
            return dataOfLabel
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arrayOfData[section].sectionName
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}

//MARK: - UITableViewDelegate
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
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { [weak self] (_, _, completionHandler) in
            self?.arrayOfData[indexPath.section].dataName.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
        deleteAction.image = UIImage(systemName: "trash")
        deleteAction.backgroundColor = .systemRed
        let configuration = UISwipeActionsConfiguration(actions: [deleteAction])
        return configuration
    }
}
