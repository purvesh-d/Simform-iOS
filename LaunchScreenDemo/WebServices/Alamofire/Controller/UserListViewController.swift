//
//  UserListViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 04/07/23.
//

import UIKit

class UserListViewController: UIViewController {

    // MARK: - IBOutlets and Vars
    @IBOutlet private weak var tableView: UITableView!
    private var users: UsersModel = UsersModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayUsers()
    }
    
    // MARK: - private method
    private func displayUsers() {        
        APIManagerDemo.shared.call(type: .getUserList, params: nil) { (result: Result<UsersModel, CustomError>) in
            switch result {
            case .success(let response):
                self.users = response
                print("Response: \(response)")
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            case .failure(let error):
                print("Error: \(error)")
            }
        }
    }
}

//MARK: - UITableViewDataSource
extension UserListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let userCell = tableView.dequeueReusableCell(withIdentifier: "UsersTableViewCell") as? UsersTableViewCell else {
            return UITableViewCell()
        }
        userCell.configCells(data: (users.data[indexPath.row]))
        return userCell
    }
}

//MARK: - UITableViewDelegate
extension UserListViewController: UITableViewDelegate {
    
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
