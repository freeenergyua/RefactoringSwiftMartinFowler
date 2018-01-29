//
//  PullUpConstructorBody.swift
//  Rerfactoring
//
//  Created by 1 on 1/28/18.
//  Copyright © 2018 User. All rights reserved.
//
//Подклассы имеют конструкторы с преимущественно одинаковым кодом.
//Создайте конструктор в суперклассе и вынесите в него общий для подклассов код. Вызывайте конструктор суперкласса в конструкторах подкласса.
import Foundation


class Unit {
    var health: Int
    var speed: Int
    
    init() {
        health = 10
        speed = 20
    }
}

class Soldier: Unit {
    var name: String
    
    init(newName: String?) {
        self.name = newName ?? "John Galt"
        super.init()
    }
}
