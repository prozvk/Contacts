//
//  AddTableViewController.swift
//  ContactsMVP
//
//  Created by MacPro on 17.02.2022.
//

import UIKit

protocol AddInputProtocol: class {
    
    var presenter: AddOutputProtocol! { get set }
    
    func AddTableViewReloadData()
}

class AddTableViewController: UITableViewController, AddInputProtocol {
    
    var presenter: AddOutputProtocol!
    
    let placeholdersArray = ["Имя", "Фамилия", "Компания", "e-mail"]
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        presenter.saveButtonTapped(arrayOfCells: tableView.visibleCells)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func AddTableViewReloadData() {
        
        let vc = navigationController?.viewControllers[0] as! UITableViewController
        
        vc.tableView.reloadData()
        
        navigationController?.popViewController(animated: true)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 4
        case 1:
            return 1
        default:
            return 4
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "addCell", for: indexPath) as! AddTableViewCell
        cell.configuration(placeholder: placeholdersArray[indexPath.row], section: indexPath.section)
        return cell
    }

}
