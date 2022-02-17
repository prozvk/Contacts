//
//  AddTableViewCell.swift
//  ContactsMVP
//
//  Created by MacPro on 17.02.2022.
//

import UIKit

class AddTableViewCell: UITableViewCell {

    @IBOutlet weak var invalidLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        invalidLabel.isHidden = true
        invalidLabel.textColor = .red
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configuration(placeholder: String, section: Int) {
        
        if section == 0 {
            textField.placeholder = placeholder
        } else {
            textField.isEnabled = false
            textField.placeholder = "Дата рождения"
        }
    }

}
