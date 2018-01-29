//
//  PushDownField.swift
//  Rerfactoring
//
//  Created by 1 on 1/28/18.
//  Copyright © 2018 User. All rights reserved.
//
//Поле используется только в некоторых подклассах.
//Переместите поле в эти подклассы.

import Foundation

class VeryFastBird: Animal, BirdProtocol {
    func fly() {
        //
    }
    var flySpeed: Int? //not all animals
}
