//
//  DetailTableViewController.swift
//  ContactsMVP
//
//  Created by MacPro on 15.02.2022.
//

import Foundation
import UIKit

class DetailTableViewController: UITableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)
        return cell
    }
}
