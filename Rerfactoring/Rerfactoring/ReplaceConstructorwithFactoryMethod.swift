//
//  ReplaceConstructorwithFactoryMethod.swift
//  Rerfactoring
//
//  Created by 1 on 1/21/18.
//  Copyright © 2018 User. All rights reserved.
//
//У вас есть сложный конструктор, делающий нечто большее, чем простая установка значений полей объекта.
//Создайте фабричный метод и замените им вызовы конструктора.
//У вас есть код, в котором раньше создавался объект, куда передавалось значение кодированного типа. После применения рефакторинга появилось уже несколько подклассов, из которых нужно создавать объекты в зависимости от значения кодированного типа

import Foundation
enum TankType: Int {
    case usual
    case fast
    case heavy
}

class ReplaceConstructorwithFactoryMethod {
    let tank = Tank.create(type: .fast)
}

protocol TankProtocol {
    var health: Int {get set}
    var speed: Int {get set}
}

class Tank: TankProtocol {
    
    var health: Int = 100
    var speed: Int = 100
    //before work with init
//    init?(type: Int) {
//        //
//    }
    
    
    //after: Factor methods
    static func create(type: TankType)-> TankProtocol {
        switch type {
        case .usual :
            return Tank()
        case .fast:
            return TankFast()
        case .heavy:
            return TankHeavy()
        }
    }
}

class TankFast: TankProtocol {
    var health: Int = 70
    var speed: Int = 250
}


class TankHeavy: TankProtocol {
    var health: Int = 350
    var speed: Int = 70
}
