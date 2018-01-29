//
//  ReplaceMagicNumberWithSymbolicConstant.swift
//  Rerfactoring
//
//  Created by Andre Gulyi on 20.01.18.
//  Copyright © 2018 User. All rights reserved.
//
//В коде используется число, которое несёт какой-то определённый смысл.
//Замените это число константой с человеко-читаемым названием, объясняющим смысл этого числа.

import Foundation

class ReplaceMagicNumberWithSymbolicConstant {
    
    func before(mass: Double, height: Double)-> Double {
        return (mass * height * 9.81)
    }
    static let GRAVITATIONAL_CONSTANT = 9.81
    
    func after(mass: Double, height: Double)-> Double {
         return mass * height * ReplaceMagicNumberWithSymbolicConstant.GRAVITATIONAL_CONSTANT
    }
    
}
