//
//  ReplaceMethodwithMethodObject.swift
//  Rerfactoring
//
//  Created by User on 25.11.17.
//  Copyright © 2017 User. All rights reserved.
//

import Foundation
//У вас есть длинный метод, в котором локальные переменные так сильно переплетены, что это делает невозможным применение извлечения метода.
//Преобразуйте метод в отдельный класс так, чтобы локальные переменные стали полями этого класса. После этого можно без труда разделить метод на части.
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
