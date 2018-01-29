//
//  ReplaceTypeCodeWithClass.swift
//  Rerfactoring
//
//  Created by Andre Gulyi on 25.11.17.
//  Copyright © 2018 User. All rights reserved.
//

import Foundation
//В классе есть поле, содержащее кодирование типа. Значения этого типа не используются в условных операторах и не влияют на поведение программы.
//Создайте новый класс и применяйте его объекты вместо значений закодированного типа.

class ReplaceTypeCodeWithClass {}

class PersonMedical {
    var O: Int?
    var A: Int?
    var B: Int?
    var AB: Int?
    var bloodGroup: Int?
    
    //after
     var bloodGroupRefactored: BloodGroup?
}

class BloodGroup {
    var O: Int?
    var A: Int?
    var B: Int?
    var AB: Int?
    var bloodGroupFinal: Int?
}

