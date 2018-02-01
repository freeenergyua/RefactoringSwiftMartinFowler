//
//  ReplaceDelegationWithInheritance.swift
//  Rerfactoring
//
//  Created by 1 on 1/28/18.
//  Copyright © 2018 User. All rights reserved.
//
//Класс содержит множество простых делегирующих методов ко всем методам другого класса.
//Сделайте класс наследником делегата, после чего делегирующие методы потеряют смысл.

import UIKit

protocol EmployeeInformatorProtocol {
    func getName(employee: BasicEmployer)-> String
    func getAge(employee: BasicEmployer)-> Int
    func getSalary(employee: BasicEmployer)-> Int
}

class BasicEmployer {
    var name: String = ""
    var age: Int = 0
    var salary: Int = 100
}

class EmployeeInformator {
    let employee: BasicEmployer?
    var employeeDelegate: EmployeeInformatorProtocol!
    
    init(employee: BasicEmployer) {
        self.employee = employee
    }
    
    func getEmployeeName()-> String {
        return (employeeDelegate.getName(employee: self.employee!))
    }
}

//after

class EmployeeInformatorAfter: BasicEmployer {
    //got all info about employee
}


