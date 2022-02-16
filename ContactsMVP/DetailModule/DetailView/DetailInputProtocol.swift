//
//  DetailInputProtocol.swift
//  ContactsMVP
//
//  Created by MacPro on 16.02.2022.
//

import Foundation

protocol DetailInput: class {
    
    var presenter: DetailOutput! { get set }
    
    func setTitle(name: String)
}
