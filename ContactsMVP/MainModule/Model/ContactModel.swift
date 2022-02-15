//
//  ContactModel.swift
//  ContactsMVP
//
//  Created by MacPro on 15.02.2022.
//

import Foundation
import RealmSwift

class ContactModel: Object {
    @Persisted var firstName: String = ""
    @Persisted var lastName: String = ""
    @Persisted var birthDate: String = ""
    @Persisted var companyName: String = ""
    @Persisted var email: String = ""
}
