//
//  ReplaceTypeCodeWithSubclasses.swift
//  Rerfactoring
//
//  Created by Andre Gulyi on 25.11.17.
//  Copyright © 2018 User. All rights reserved.
//
//У вас есть закодированный тип, который непосредственно влияет на поведение программы (основываясь на значениях этого поля, в условных операторах выполняется различный код)
//Для каждого значения закодированного типа, создайте подклассы. А затем, вынесите соответствующие поведения из исходного класса в эти подклассы. Управляющий код замените полиморфизмом.

import Foundation

class ReplaceTypeCodeWithSubclasses {
    var engineer: Int?
    var salesman: Int?
    var type: Int?
}

//after
class  EmployerAfter {
    var type: Int?
}

class EngineerAfter: EmployerAfter {}
class SalesmanAfter: EmployerAfter {}
