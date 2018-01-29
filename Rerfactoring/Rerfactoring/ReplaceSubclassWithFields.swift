//
//  ReplaceSubclassWithFields.swift
//  Rerfactoring
//
//  Created by Andre Gulyi on 25.11.17.
//  Copyright © 2018 User. All rights reserved.
//

//У вас есть подклассы, которые отличаются только методами, возвращающими данные-константы.
//Замените методы полями в родительском классе и удалите подклассы.

import Foundation

class PersonCool {
    func getGenderCode()-> String{return "why i am?"}
}

class FemaleCool {
    func getGenderCode()-> String{ return "F" }
}


class MaleCool {
     func getGenderCode()-> String{ return "M" }
}
//after

class PersonCoolNew {
    var code: String?
}
