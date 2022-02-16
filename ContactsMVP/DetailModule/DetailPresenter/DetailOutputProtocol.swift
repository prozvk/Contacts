//
//  DetailOutputProtocol.swift
//  ContactsMVP
//
//  Created by MacPro on 16.02.2022.
//

import Foundation

protocol DetailOutput: class {
    
    init(view: DetailInput, contact: ContactModel?)
    
    func getTextLabel(type: String) -> String
    
    func getTitle()
    
    func deleteContact()
}
