//
//  DetailPresenter.swift
//  ContactsMVP
//
//  Created by MacPro on 16.02.2022.
//

import Foundation

class DetailPresenter: DetailOutput {
    
    var view: DetailInput?

    var contact: ContactModel?
    
    required init(view: DetailInput, contact: ContactModel?) {
        self.view = view
        
        self.contact = contact
    }
    
    func getTextLabel(index: Int) -> String {
        return "contact!.firstName"
    }
}
