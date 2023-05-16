//
//  PatientViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 12/05/23.
//

import UIKit

class PatientViewController: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet private weak var searchBar: UISearchBar!
    @IBOutlet private weak var tableView: UITableView!
    
    //MARK: - Private Variables
    private let arrayOfPatients = ["Paul ZZDemo", "Max ZZDemo", "Davida ZZDemo", "Nancie ZZDemo", "Alfred ZZDemo", "Freddie ZZDemo", "Erica ZZDemo", "Bellanonna ZZDemo", "Alexander ZZDemo", "Christopher ZZDemo", "Maximiliano ZZDemo", "Oliver ZZDemo", "Paul ZZDemo", "Max ZZDemo", "Davida ZZDemo", "Nancie ZZDemo", "Alfred ZZDemo", "Freddie ZZDemo", "Erica ZZDemo", "Bellanonna ZZDemo", "Alexander ZZDemo", "Christopher ZZDemo", "Maximiliano ZZDemo", "Oliver ZZDemo"]
    private var searchResult: [String] = []
    private var isSearchActive: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        setupSearchBar()
    }
    
    //MARK: - Private method
    private func setupSearchBar() {
        let image = UIImage()
        searchBar.setBackgroundImage(image, for: .top, barMetrics: .defaultPrompt)
    }
}

//MARK: - UITableViewDataSource
extension PatientViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        isSearchActive ? searchResult.count : arrayOfPatients.count
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PatientTableViewCell") as? PatientTableViewCell else {
            return UITableViewCell()
        }
        isSearchActive ? cell.configCell(data: searchResult[indexPath.row]) : cell.configCell(data: arrayOfPatients[indexPath.row])
        return cell
    }
}

//MARK: - UITableViewDelegate
extension PatientViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        50
    }
}

//MARK: - UISearchBarDelegate
extension PatientViewController : UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchResult = searchText.isEmpty ? arrayOfPatients : arrayOfPatients.filter { $0.localizedCaseInsensitiveContains(searchText)}
        
        if (searchResult.count == 0) {
            isSearchActive = false
        } else {
            isSearchActive = true
        }
        tableView.reloadData()
    }
}
