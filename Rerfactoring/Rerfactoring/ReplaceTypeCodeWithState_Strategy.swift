//
//  ReplaceTypeCodeWithState:Strategy.swift
//  Rerfactoring
//
//  Created by Andre Gulyi on 25.11.17.
//  Copyright © 2018 User. All rights reserved.
//
//У вас есть закодированный тип, который влияет на поведение, но вы не можете использовать подклассы, чтобы избавиться от него.
//Замените кодирование типа объектом-состоянием. При необходимости заменить значение поля с кодированием типа, в него подставляется другой объект-состояние.

import Foundation

class ReplaceTypeCodeWithState_Strategy {
    var engineer: Int?
    var salesman: Int?
    var type: Int?
}

//after
enum EmployerType {
    case engineer
    case salesman
}

class EmployerNew {
    var type: EmployerType?
    fileprivate var employer: Employer?
}

fileprivate class Employer {}
