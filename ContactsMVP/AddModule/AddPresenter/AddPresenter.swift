//
//  AddPresenter.swift
//  ContactsMVP
//
//  Created by MacPro on 17.02.2022.
//

import Foundation
import UIKit

protocol AddOutputProtocol: class {
    
    func saveButtonTapped(arrayOfCells: [UITableViewCell])
}

class AddPresenter: AddOutputProtocol {
    
    weak var view: AddInputProtocol!
    
    required init(view: AddInputProtocol) {
        self.view = view
    }
    
    func saveButtonTapped(arrayOfCells: [UITableViewCell]) {
        
        //проверка на валидность
        //если нет то сказать view показать invalidLabel
        //если да то создать модель, добавить ее, обновить таблицу, popview
        
        let arr = arrayOfCells as! [AddTableViewCell]
        
        
        let model = ContactModel()
        
        model.firstName = arr[0].textField.text!
        model.lastName = arr[1].textField.text!
        
        RealmManager.shared.saveContactModel(model: model)
        
        view.AddTableViewReloadData()
        
        
    }
}
