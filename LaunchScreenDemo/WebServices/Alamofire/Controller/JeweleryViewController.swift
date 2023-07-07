//
//  ClothesViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 05/07/23.
//

import UIKit

protocol GetProducts: AnyObject {
    func getProducts(products: [ProductRequestModel])
}

class JeweleryViewController: UIViewController {

    // MARK: - IBOutlet and Vars
    @IBOutlet private weak var tableView: UITableView!
    var products: [ProductRequestModel] = []
    private let viewModel: JeweleryViewModel = JeweleryViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        navigationItem.hidesBackButton = true
        navigationItem.title = "Women's Jewelery"
        viewModel.delegate = self
        viewModel.getProduct()
        bindViewModel()
       
    }
    
    private func bindViewModel() {
        viewModel.deleteSuccess.bind { responseIndex in
            self.products.remove(at: responseIndex)
            self.tableView.deleteRows(at: [IndexPath(row: responseIndex, section: 0)], with: .fade)
        }
    }
}

// MARK: - GetProducts
extension JeweleryViewController: GetProducts {
    func getProducts(products: [ProductRequestModel]) {
        self.products = products
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
}

// MARK: - UITableViewDataSource
extension JeweleryViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "JeweleryTableViewCell") as? JeweleryTableViewCell else {
            return UITableViewCell()
        }
        cell.configureCell(product: products[indexPath.row])
        return cell
    }
}

// MARK: - UITableViewDelegate
extension JeweleryViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { [self] (_, _, completionHandler) in
            self.viewModel.deleteIndex = indexPath.row
            self.viewModel.deleteProduct()
        }
        deleteAction.image = UIImage(systemName: "trash")
        let configuration = UISwipeActionsConfiguration(actions: [deleteAction])
        return configuration
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {        
        guard let updateVC = self.storyboard?.instantiateViewController(withIdentifier: "JeweleryUpdateViewController") as? JeweleryUpdateViewController else {
            return
        }
        updateVC.product = products[indexPath.row]
        navigationController?.pushViewController(updateVC, animated: true)
    }
}
