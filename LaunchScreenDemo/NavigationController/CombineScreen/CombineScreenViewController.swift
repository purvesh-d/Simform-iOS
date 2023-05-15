//
//  CombineScreenViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 12/05/23.
//

import UIKit

class CombineScreenViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!
    var arrayOfScreen = ComponentsModel.getData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}

extension CombineScreenViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayOfScreen.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ComponentsTableViewCell") as? ComponentsTableViewCell else {
            return UITableViewCell()
        }
        cell.configCell(data: arrayOfScreen[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        70
    }
}

extension CombineScreenViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController = UIStoryboard(name: arrayOfScreen[indexPath.row].storyBoard, bundle: nil).instantiateViewController(withIdentifier: arrayOfScreen[indexPath.row].viewController)
        navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(viewController, animated: true)
    }
}

extension CombineScreenViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.y <= 0  {
            navigationItem.largeTitleDisplayMode = .always
        } else {
            navigationItem.largeTitleDisplayMode = .always
        }
    }
}
