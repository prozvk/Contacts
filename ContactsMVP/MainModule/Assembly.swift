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
    
    func createDetailModule(contact: ContactModel, detailView: DetailTableViewController)
}

class Assembly: NSObject, AssemblyProtocol {
    
    @IBOutlet weak var viewController: UITableViewController!
    
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

        let model = ContactModel()
        model.firstName = "Prozorov123"

        RealmManager.shared.saveContactModel(model: model)
    }
    
    func createDetailModule(contact: ContactModel, detailView: DetailTableViewController) {
                
        let presenter = DetailPresenter(view: detailView, contact: contact)
                
        detailView.presenter = presenter
    }
}
