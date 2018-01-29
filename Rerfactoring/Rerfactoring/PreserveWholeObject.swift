//
//  PreserveWholeObject.swift
//  Rerfactoring
//
//  Created by 1 on 1/28/18.
//  Copyright © 2018 User. All rights reserved.
//
//Problem : Вы получаете несколько значений из объекта, а затем передаёте их в метод как параметры.
//Solution: Вместо этого передавайте весь объект.
import Foundation


class PreserveWholeObject {
    
    let tempArray = [1,2,4,5,67,76]
    
    func before() {
        let min = tempArray.min()
        let max = tempArray.max()
        PreserveWholeObject.calcAverage(params: (min,max))
    }
    
    static func calcAverage(params: (Int?,Int?)) {}
    
    func after(arrayForCalcAverage: [Int]) {}
    
}
