//
//  MainPresenter.swift
//  ContactsMVP
//
//  Created by MacPro on 15.02.2022.
//

import Foundation
import RealmSwift

class MainPresenter: OutputProtocol {
    
    weak var view: InputProtocol?
    var model: RealmManager?
    var router: RouterProtocol?
    var localRealm = try! Realm()
    var contactsArray: Results<ContactModel>!
    
    func tapOnContact(contact: ContactModel, detailView: DetailInput) {
        router?.showDetail(contact: contact, detailView: detailView)
    }
    
    func deleteContact(index: Int) {
        RealmManager.shared.deleteContactModel(model: contactsArray[index])
    }
}
