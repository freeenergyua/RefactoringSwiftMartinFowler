//
//  InlineTemp.swift
//  Rerfactoring
//
//  Created by User on 25.11.17.
//  Copyright © 2017 User. All rights reserved.
//

import Foundation
//У вас есть временная переменная, которой присваивается результат простого выражения (и больше ничего).
//Замените обращения к переменной этим выражением.

//You have a temp that is assigned to once with a simple expression, and the temp is getting in the way of other refactorings.

class InlineTemp {
    
    func before()-> Bool {
        let client = Person(name: "bob", money: 13.6, haveCar: false)
        var basePrice = client.money
        basePrice += 1
        return (basePrice > 1000)
    }
    
    func after() -> Bool {
        let client = Person(name: "bob", money: 13.6, haveCar: false)
        //...we can change temp by mistake
        return ((client.money + 1) > 1000)
    }
}
