//
//  SplitTemporaryVariable.swift
//  Rerfactoring
//
//  Created by User on 25.11.17.
//  Copyright © 2017 User. All rights reserved.
//

import Foundation
//У вас есть локальная переменная, которая используется для хранения разных промежуточных значений внутри метода (за исключением переменных циклов).
//Используйте разные переменные для разных значений. Каждая переменная должна отвечать только за одну определённую вещь.
//You have a temporary variable assigned to more than once, but is not a loop variable nor a collecting temporary variable.

class SplitTemporaryVariable {
    
    func before() {
        let size = 10
        var totalSize = size * 2
        //...
        totalSize = size + 50
        print(totalSize)
    }
    //Refactor: Make a separate temporary variable for each assignment.
    
    func after() {
        let size = 10
        let height = size * 2
        let newModelSize = size + 50
        print("\(height) \(newModelSize)")
    }
    
}
