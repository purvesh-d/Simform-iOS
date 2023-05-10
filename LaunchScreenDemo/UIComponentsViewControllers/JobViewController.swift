//
//  JobViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 12/04/23.
//

import UIKit

class JobViewController: UIViewController {

    //MARK: - IBOutlet
    @IBOutlet private weak var jobView: UITableView!
    
    private var arrCompany = FindJobModel.getCurrentOpening()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        jobView.register(UINib(nibName: "CompanyTableCellTableViewCell", bundle: nil), forCellReuseIdentifier: "CompanyTableCellTableViewCell")
    }

    //MARK: - Button action
    @IBAction func btnSubmitAction(_ sender: UIButton) {
        let filterData = arrCompany.filter{$0.isSelected}
        print(filterData.count)
    }
}

//MARK: - UITableViewDataSource
extension JobViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrCompany.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let comp = tableView.dequeueReusableCell(withIdentifier: "CompanyTableCellTableViewCell") as? CompanyTableCellTableViewCell else {
            return UITableViewCell()
        }
        let newdata = arrCompany[indexPath.row]
        comp.check(data: newdata)
        return comp
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}

//MARK: - UITableViewDelegate
extension JobViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let indexData = arrCompany[indexPath.row]
        indexData.isSelected = !indexData.isSelected
        arrCompany[indexPath.row] = indexData
        jobView.reloadData()
    }
}
