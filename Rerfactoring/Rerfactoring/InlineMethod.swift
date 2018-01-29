//
//  InlineMethod.swift
//  Rerfactoring
//
//  Created by User on 25.11.17.
//  Copyright © 2017 User. All rights reserved.
//
//Стоит использовать в том случае, когда тело метода очевиднее самого метода.
//Замените вызовы метода его содержимым и удалите сам метод.

import Foundation

//A method's body is just as clear as its name.

class InlineMethod {
    
    var weight = 0.0
    
    //Refactoring - replace method with just code
    func isWeightMoreThan10()-> Bool {
        return self.weight > 10.0 ? true : false
    }
}
