//
//  ExtractClass.swift
//  Rerfactoring
//
//  Created by User on 25.11.17.
//  Copyright © 2017 User. All rights reserved.
//

import Foundation
//Один класс работает за двоих.
//Создайте новый класс, переместите в него поля и методы, отвечающие за определённую функциональность.

class PersonExtractClass {
    
    let name: String = ""
    let phoneNumber: Int = 0
    var phoneNumberAfter = PhoneNumber()
    
    func getCountryCode(phoneNumber: Int) -> Int {
    //calculation
        return 0
    }
    
    //MARK: ExtractClass vs InlineClass

    func inlineClass() -> Int {
        return self.getCountryCode(phoneNumber: self.phoneNumber)
    }
        
    func extractClass() -> Int {
        return self.phoneNumberAfter.getCountryCodePhoneNumber()
    }

}


class PhoneNumber {
    var number: Int = 0
    func getCountryCodePhoneNumber() -> Int {
        //calculation
        return 0
    }
}
