//
//  MainPresenter.swift
//  ContactsMVP
//
//  Created by MacPro on 15.02.2022.
//

import Foundation
import RealmSwift

class MainPresenter: OutputProtocol {

    var router: RouterProtocol?
    var view: InputProtocol?
    var model: RealmManager?
    
    var localRealm = try! Realm()
    var contactsArray: Results<ContactModel>!
    
    func tapOnContact(contact: ContactModel, detailView: DetailTableViewController) {
        
        router?.showDetail(contact: contact, detailView: detailView)
    }
}
