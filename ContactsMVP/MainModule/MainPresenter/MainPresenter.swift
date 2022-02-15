//
//  MainPresenter.swift
//  ContactsMVP
//
//  Created by MacPro on 15.02.2022.
//

import Foundation
import RealmSwift

class MainPresenter: OutputProtocol {
    
    var view: InputProtocol?
    var model: RealmManager?
    
    var localRealm = try! Realm()
    var contactsArray: Results<ContactModel>!
    
    func getContactAt(_ row: Int) -> ContactModel {
        return contactsArray![row]
    }
}
