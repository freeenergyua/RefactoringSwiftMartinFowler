//
//  RemoveAssignmentsToParameters.swift
//  Rerfactoring
//
//  Created by User on 25.11.17.
//  Copyright © 2017 User. All rights reserved.
//

import Foundation

//The code assigns to a parameter.
class RemoveAssignmentsToParameters{
    
    //good sample
    func swapTwoInts( a: inout Int, _ b: inout Int)-> Int {
        let temporaryA = a
        a = b
        b = temporaryA
        return b
    }
    //we have unmutable func parameters as default so dont change their value 

    
    func before( a:inout Int, b: inout Int) -> Int {
        if (a != 100) {
            return a + b
        }
        return a
    }
    
    //Вместо параметра воспользуйтесь новой локальной переменной.
    func after(a: Int, b: Int) -> Int {
        var result = 0
        if (a != 100) {
            result = a + b
        } else {
            result = a
        }
        return result
    }
}
