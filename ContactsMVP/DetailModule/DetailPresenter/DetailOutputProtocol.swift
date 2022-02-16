//
//  DetailOutputProtocol.swift
//  ContactsMVP
//
//  Created by MacPro on 16.02.2022.
//

import Foundation

protocol DetailOutput: class {
    
    init(view: DetailInput, contact: ContactModel?)
    
    func getTextLabel(index: Int) -> String
}
