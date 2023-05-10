//
//  ProfileViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 26/04/23.
//

import UIKit

class ProfileViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: - IBOutlets
    @IBOutlet private weak var tfInterview: UITextField!
    @IBOutlet private weak var tfApplied: UITextField!
    @IBOutlet private weak var tfReviewed: UITextField!
    @IBOutlet private weak var editButton: UIButton!
    @IBOutlet private weak var tableView: UITableView!
    @IBOutlet private weak var profileImage: UIImageView!
    
    //MARK: - Private Variables
    private var arrayOfSection = ["Experience", "Education", "Resume", "Portfolio"]
    private var arrayOfSectionBtn = ["See all", "See all", "Make a resume", "See all"]
    private var arrayOfExperience = ResumeModel.getExperience()
    private var arrayOfEducation = ResumeModel.getEducation()
    private var arrayOfResume = ResumeModel.getResumeData()
    private var seeAllDict = [0: false, 1: false]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    //MARK: - Private Methods
    private func setupUI() {
        tableView.keyboardDismissMode = .onDrag
        tfApplied.delegate = self
        tfReviewed.delegate = self
        tfInterview.delegate = self
        setUpProfileImage()
    }
    
    private func setUpProfileImage() {
        profileImage.layer.cornerRadius = profileImage.bounds.width/2
    }
    
    @IBAction func editAction(_ sender: UIButton) {
        tfApplied.isUserInteractionEnabled = editButton.isSelected
        tfReviewed.isUserInteractionEnabled = editButton.isSelected
        tfInterview.isUserInteractionEnabled = editButton.isSelected
        if editButton.isSelected {
            tfApplied.becomeFirstResponder()
        } else {
            editButton.isSelected = false
        }
    }
}

//MARK: - UITableViewDataSource
extension ProfileViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrayOfSection.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return seeAllDict[0] ?? false ? arrayOfExperience.count : 1
        } else if section == 1 {
            return seeAllDict[1] ?? false ? arrayOfEducation.count : min(2 , arrayOfEducation.count)
        } else if section == 2 {
            return arrayOfResume.count
        } else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
               
        if indexPath.section == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "RowTableViewCell") as? RowTableViewCell else {
                return UITableViewCell()
            }
            let newdata = arrayOfExperience[indexPath.row]
            cell.configureCell(dataOfRow: newdata)
            return cell
        } else if indexPath.section == 1 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "RowTableViewCell") as? RowTableViewCell else {
                return UITableViewCell()
            }
            let newdata = arrayOfEducation[indexPath.row]
            cell.configureCell(dataOfRow: newdata)
            return cell
        } else if indexPath.section == 2 {
            guard  let resumeCell = tableView.dequeueReusableCell(withIdentifier: "ResumeTableViewCell") as? ResumeTableViewCell else {
                return UITableViewCell()
            }
            let newData = arrayOfResume[indexPath.row]
            resumeCell.configureCell(data: newData)
            return resumeCell
        } else {
            guard let portfolioCell = tableView.dequeueReusableCell(withIdentifier: "PortfolioTableViewCell") as? PortfolioTableViewCell else {
                return UITableViewCell()
            }
            return portfolioCell
        }
    }
}

//MARK: - UITableViewDelegate
extension ProfileViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 3 {
            return CGFloat(116*(ResumeModel.getPortfolio().count/3))
        } else {
            return UITableView.automaticDimension
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        if arrayOfEducation.isEmpty {
            headerView.isHidden = true
        } else {
            let sectionName = UILabel()
            sectionName.text = "\(arrayOfSection[section])"
            sectionName.textColor = UIColor(named: "sectionColor")
            sectionName.font = UIFont.boldSystemFont(ofSize: 16)
            sectionName.translatesAutoresizingMaskIntoConstraints = false
            headerView.addSubview(sectionName)
            NSLayoutConstraint.activate([
                sectionName.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 5),
                sectionName.centerYAnchor.constraint(equalTo: headerView.centerYAnchor)
            ])
            
            let sectionButton = UIButton()
            sectionButton.isSelected = seeAllDict[section] ?? false
            sectionButton.setTitle("\(arrayOfSectionBtn[section])", for: .normal)
            sectionButton.setTitle("See Less", for: .selected)
            sectionButton.titleLabel?.font = UIFont.systemFont(ofSize: 13)
            sectionButton.setTitleColor(UIColor(named: "sectionButtonColor"), for: .normal)
            sectionButton.tag = section
            sectionButton.addTarget(self, action: #selector(loadTableViews), for: .touchUpInside)
            sectionButton.changesSelectionAsPrimaryAction = true
            sectionButton.translatesAutoresizingMaskIntoConstraints = false
            headerView.addSubview(sectionButton)
            NSLayoutConstraint.activate([
                headerView.trailingAnchor.constraint(equalTo: sectionButton.trailingAnchor, constant: 5),
                headerView.centerYAnchor.constraint(equalTo: sectionButton.centerYAnchor)
            ])
        }
        return headerView
    }
    
    @objc func loadTableViews(sender: UIButton) {
        seeAllDict[sender.tag]?.toggle()
        tableView.reloadData()
    }
}
