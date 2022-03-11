//
//  DetailPresenter.swift
//  ContactsMVP
//
//  Created by MacPro on 16.02.2022.
//

import Foundation

class DetailPresenter: DetailOutput {

    weak var view: DetailInput?
    var contact: ContactModel?
    
    required init(view: DetailInput, contact: ContactModel?) {
        self.view = view
        self.contact = contact
    }
    
    func getTextLabel(type: String) -> String {
        switch type {
        case "Компания:":
            return contact!.companyName
        case "e-mail:":
            return contact!.email
        case "Дата рождения:":
            return contact!.birthDate
        default:
            return "contact"
        }
    }
    
    func getTitle() {
        let name = contact!.firstName + " " + contact!.lastName
        view!.setTitle(name: name)
    }
    
    func deleteContact() {
        
        RealmManager.shared.deleteContactModel(model: contact!)
    }
    
    
}
