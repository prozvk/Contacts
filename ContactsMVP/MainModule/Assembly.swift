//
//  Assembly.swift
//  ContactsMVP
//
//  Created by MacPro on 15.02.2022.
//

import Foundation
import UIKit

class MVPAssembly: NSObject {
    
    @IBOutlet weak var viewController: UIViewController!
    
    // будет вызываться раньше всех остальных классов
    override func awakeFromNib() {
        super.awakeFromNib()
        
        guard let view = viewController as? MainTableViewController else { return }

        let presenter = MainPresenter()
        presenter.contactsArray = presenter.localRealm.objects(ContactModel.self)

        let model = ContactModel()
        model.firstName = "Vladislav"

        RealmManager.shared.saveContactModel(model: model)

//        let dataManager = DataManagerImaplementation()

        view.presenter = presenter

        presenter.view = view
        
        
//        presenter.dataManager = dataManager
    }
}
