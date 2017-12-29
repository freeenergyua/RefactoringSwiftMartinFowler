//
//  Helper6.swift
//  Rerfactoring
//
//  Created by User on 18.11.17.
//  Copyright © 2017 User. All rights reserved.
//

import Foundation

class Client {
    var name: String = ""
    var money: Float = 0.0
    var age: Int = 0
    
    init(name: String, money: Float, age: Int) {
        self.name = name
        self.money = money
        self.age  = age
    }
}

struct Person {
    var name =  ""
    var money = 0.0
    var haveCar = false
}