//
//  ChangeValueToReference.swift
//  Rerfactoring
//
//  Created by User on 25.11.17.
//  Copyright © 2017 User. All rights reserved.
//

import Foundation

//You have a class with many equal instances that you want to replace with a single object.
//Есть много одинаковых экземпляров одного класса, которые можно заменить одним объектом.
//Превратите одинаковые объекты в один объект-ссылку.

class ChangeValueToReference {
    static var basePrice:Double = 4.0
    var arrNumber = Array(repeating: Double(4.0), count: 4)
    var arrReference = Array(repeating: ChangeValueToReference.basePrice, count: 4)
    
    func before() {
        //base price increase by 2 and reduce by 10%
        let newArr = arrNumber.map {$0 + 2}
        //something changed in base price result with error
        newArr.map({$0 * 0.9})
    }
    
    func after(newPrice: Double){
        ChangeValueToReference.basePrice = newPrice
        let newArr = arrReference.map{$0*0.9}

    }
}
