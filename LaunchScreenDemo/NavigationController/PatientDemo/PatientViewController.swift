//
//  PatientViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 12/05/23.
//

import UIKit

class PatientViewController: UIViewController {

    @IBOutlet private weak var searchBar: UISearchBar!
    @IBOutlet private weak var tableView: UITableView!
    
    let arrayOfPatients = ["PaulZZ Demo", "MaxZZ Demo", "Nancie Demo", "Alfred ZZDemo", "Freddie ZZDemo", "Erica ZZDemo", "Bellonna ZZDemo", "Alexander ZZDemo", "PaulZZ Demo", "MaxZZ Demo", "Nancie Demo", "Alfred ZZDemo", "Freddie ZZDemo", "Erica ZZDemo", "Bellonna ZZDemo", "Alexander ZZDemo"]
    var searchResult: [String] = []
    var isSearchActive: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let image = UIImage()
        searchBar.setBackgroundImage(image, for: .any, barMetrics:  .defaultPrompt)
    }
}

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

extension PatientViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        dismiss(animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        50
    }
}

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
