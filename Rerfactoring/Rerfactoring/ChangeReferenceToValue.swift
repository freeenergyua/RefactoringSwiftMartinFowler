//
//  ChangeReferenceToValue.swift
//  Rerfactoring
//
//  Created by User on 25.11.17.
//  Copyright © 2017 User. All rights reserved.
//

import Foundation
//You have a reference object that is small, immutable, and awkward to manage.

class BobClass {
    var name = "Bob"
    var secondName = "Berk"
}

struct BobStruct {
    var name = "Bob"
    var secondName = "Berk"
}

class ChangeReferenceToValue {

    
//коли ми використовуємо і суперкласс і підкласи, випадкова зміна в суперкласі може негативно вплинути на  наслідників
    
    func before() {
        var person = BobClass()
        person.name = "Joke"
        let fullName = person.name + person.secondName
        print(fullName)
    }
    
    
    func after() {
        var person = BobStruct()
        person.name = "Joke"
        let fullName = person.name + person.secondName
        print(fullName)
    }
}



