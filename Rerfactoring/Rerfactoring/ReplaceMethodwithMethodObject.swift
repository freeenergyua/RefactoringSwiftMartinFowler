//
//  ReplaceMethodwithMethodObject.swift
//  Rerfactoring
//
//  Created by User on 25.11.17.
//  Copyright © 2017 User. All rights reserved.
//

import Foundation

//You have a long method that uses local variables in such a way that you cannot apply
class ReplaceMethodwithMethodObject  {
    
    func test() -> Int {
        let primaryBasePrice: Int = 1
        let secondaryBasePrice: Int = primaryBasePrice + 400 - 32
        let tertiaryBasePrice: Int = secondaryBasePrice * 2
        return tertiaryBasePrice
    }

    //refactored
    func refactored(calculator: TestCalculator) -> Int {
        return calculator.calculate()
    }
}
//Refactor: move all calculation to special variable
class TestCalculator {
    
    static var primaryBasePrice: Int = 0
    static var secondaryBasePrice: Int = 0
    static var tertiaryBasePrice: Int = 0
    
    func calculate()-> Int {
        //use all fields for calculation
        return 1
    }
}