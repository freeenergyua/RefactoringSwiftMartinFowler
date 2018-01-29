//
//  ReplaceParameterWithMethodCall.swift
//  Rerfactoring
//
//  Created by 1 on 1/28/18.
//  Copyright © 2018 User. All rights reserved.
//
//Problem: Вызываем метод и передаем его результаты как параметры другого метода. При этом значение параметров могли бы быть получены и внутри вызываемого метода.
//Solution: Вместо передачи значения через параметры метода, попробуйте переместить код получения значения внутрь самого метода.

import Foundation

class ReplaceParameterWithMethodCall {
    
    func before() {
        let min = Int.min
        let max = Int.max
        let avr = (min + max)/2
        testFunc(min: min, max: max, avr: avr)
    }
    
    func testFunc(min: Int, max: Int, avr: Int ){}
  
}
