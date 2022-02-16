//
//  DetailTableViewController.swift
//  ContactsMVP
//
//  Created by MacPro on 15.02.2022.
//

import Foundation
import UIKit

class DetailTableViewController: UITableViewController, DetailInput {
    
    var presenter: DetailOutput!
    
    let placeholdersArray = ["Компания:", "e-mail:", "Дата рождения:"]
    
    @IBAction func deleteContactButton(_ sender: Any) {
        presenter.deleteContact()
        
        let vc = self.navigationController?.viewControllers[0] as! UITableViewController
        vc.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.getTitle()
    }
    
    func setTitle(name: String) {
        title = name
    }
    
    //MARK: - DataSource

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)
        cell.textLabel?.text = placeholdersArray[indexPath.row]
        cell.textLabel?.textColor = .placeholderText
        cell.detailTextLabel?.text = presenter.getTextLabel(type: placeholdersArray[indexPath.row])
        
        return cell
    }
}
