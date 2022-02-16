//
//  ViewController.swift
//  ContactsMVP
//
//  Created by MacPro on 15.02.2022.
//

import Foundation
import UIKit

class MainTableViewController: UITableViewController, InputProtocol {
    
    var presenter: OutputProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    //MARK: - DataSource
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.contactsArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! MainTableViewCell
        cell.configure(with: presenter.contactsArray[indexPath.row])
        
        return cell
    }
    
    //MARK: - Segue
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let contact = presenter.contactsArray[indexPath.row]
                presenter.tapOnContact(contact: contact, detailView: segue.destination as! DetailTableViewController)
            }
        }
    }
}
