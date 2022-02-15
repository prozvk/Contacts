//
//  ViewController.swift
//  ContactsMVP
//
//  Created by MacPro on 15.02.2022.
//

import UIKit

class MainTableViewController: UITableViewController, InputProtocol {
    
    var presenter: OutputProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
    
    //MARK: - Delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }

}

