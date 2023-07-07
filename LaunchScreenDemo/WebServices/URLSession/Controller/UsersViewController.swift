//
//  UsersViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 30/06/23.
//

import UIKit

class UsersViewController: UIViewController {

    //MARK: - IBOutlet and Var
    @IBOutlet private weak var tableView: UITableView!
    private var users: UserModel = UserModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchDataFromServer()
    }
    
    //MARK: - Private method for fetching data
    private func fetchDataFromServer() {
        APIManager.shared.callAPI(urlString: "https://reqres.in/api/users?page=2") { (result: Result<UserModel, Error>) in
            switch result {
                case .success(let users):
                    self.users = users
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                    }
                case .failure(let error):
                    print("error \(error)")
            }
       }
    }
}

//MARK: - UITableViewDataSource
extension UsersViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let userCell = tableView.dequeueReusableCell(withIdentifier: "UserTableViewCell") as? UserTableViewCell else {
            return UITableViewCell()
        }
        userCell.configCells(data: (users.data[indexPath.row]))
        return userCell
    }
}

//MARK: - UITableViewDelegate
extension UsersViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { [self] (_, _, completionHandler) in
            self.users.data.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
        deleteAction.image = UIImage(systemName: "trash")
        deleteAction.backgroundColor = .red
        let configuration = UISwipeActionsConfiguration(actions: [deleteAction])
        return configuration
    }
}
