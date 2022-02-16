//
//  Router.swift
//  ContactsMVP
//
//  Created by MacPro on 15.02.2022.
//

import Foundation
import UIKit

protocol RouterProtocol {
        
    var assembly: AssemblyProtocol? { get set }
    
    func showDetail(contact: ContactModel, detailView: DetailInput)
}

class Router: RouterProtocol {
    
    var assembly: AssemblyProtocol?
    
    init(assembly: AssemblyProtocol) {
        self.assembly = assembly
    }
    
    func showDetail(contact: ContactModel, detailView: DetailInput) {
        
        assembly?.createDetailModule(contact: contact, detailView: detailView)
    }
}
