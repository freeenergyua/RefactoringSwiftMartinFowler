//
//  RemoveSettingMethod.swift
//  Rerfactoring
//
//  Created by 1 on 1/28/18.
//  Copyright © 2018 User. All rights reserved.

//Удалить сеттер. = можно просто использовать let

import Foundation

class RemoveSettingMethod {
    static let entity = 10
    
    //just use let
    func test() {
        //RemoveSettingMethod.entity = 12 //error
    }
}
