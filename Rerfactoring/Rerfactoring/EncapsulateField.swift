//
//  EncapsulateField.swift
//  Rerfactoring
//
//  Created by User on 03.12.17.
//  Copyright © 2017 User. All rights reserved.
//

import Foundation

class EncapsulateField {
    // but I never want to set the `password` externally,
    // so I made it private
    private var password: Int = 0
    
    func getPassword()-> Int {
        return password
    }
}

class test10 {

    func after() {
        let x = EncapsulateField()
        let pass = x.getPassword()
        //x.password = 10
    }
}

class PersonSecret {
    internal var name: String = ""
    private(set) var UUID: String = ""
}
