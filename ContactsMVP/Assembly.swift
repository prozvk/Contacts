//
//  Assembly.swift
//  ContactsMVP
//
//  Created by MacPro on 15.02.2022.
//

import Foundation
import UIKit

protocol AssemblyProtocol {
    
    func createMainModule()
    
    func createDetailModule(contact: ContactModel, detailView: DetailInput)
    
    func createAddModule(addView: AddInputProtocol)
}

class Assembly: NSObject, AssemblyProtocol {
    
    
    @IBOutlet weak var viewController: UITableViewController!
    
    // будет вызываться раньше всех остальных классов
    override func awakeFromNib() {
        super.awakeFromNib()
        
        createMainModule()
    }
    
    func createMainModule() {
        guard let view = viewController as? MainTableViewController else { return }
        
        let router = Router(assembly: self)
        router.assembly = self

        let presenter = MainPresenter()
        presenter.contactsArray = presenter.localRealm.objects(ContactModel.self)
        presenter.view = view
        presenter.router = router
        
        view.presenter = presenter

//        let model = ContactModel()
//        model.firstName = "Vladislav"
//        model.lastName = "Prozorov"
//        model.birthDate = "26.11.2003"
//        model.companyName = "65apps"
//        model.email = "prozvk@outlook.com"
//
//        RealmManager.shared.saveContactModel(model: model)
    }
    
    func createDetailModule(contact: ContactModel, detailView: DetailInput) {
                
        let presenter = DetailPresenter(view: detailView, contact: contact)
                
        detailView.presenter = presenter
    }
    
    func createAddModule(addView: AddInputProtocol) {
        
        let presenter = AddPresenter(view: addView)
        
        addView.presenter = presenter
    }
}
