//
//  Assembly.swift
//  ContactsMVP
//
//  Created by MacPro on 15.02.2022.
//

import Foundation
import UIKit

protocol AssemblyProtocol {
    
}

class Assembly: NSObject {
    
    @IBOutlet weak var viewController: UITableViewController!
    
    // будет вызываться раньше всех остальных классов
    override func awakeFromNib() {
        super.awakeFromNib()
        
        createMainModule()
    }
    
    func createMainModule() {
        guard let view = viewController as? MainTableViewController else { return }

        let presenter = MainPresenter()
        presenter.contactsArray = presenter.localRealm.objects(ContactModel.self)

        let model = ContactModel()
        model.firstName = "Prozorov"

        RealmManager.shared.saveContactModel(model: model)

        view.presenter = presenter

        presenter.view = view
    }
    
    func createDetailModule(contact: ContactModel) {
        
    }
    
    func segueTest() {
        print("seguetest")
    }
}
