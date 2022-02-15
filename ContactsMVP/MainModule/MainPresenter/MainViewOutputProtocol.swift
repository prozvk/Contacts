//
//  MainViewOutputProtocol.swift
//  ContactsMVP
//
//  Created by MacPro on 15.02.2022.
//

import Foundation
import RealmSwift

protocol OutputProtocol {
    
    var contactsArray: Results<ContactModel>! { get set }
    
    func getContactAt(_ row: Int) -> ContactModel
}
