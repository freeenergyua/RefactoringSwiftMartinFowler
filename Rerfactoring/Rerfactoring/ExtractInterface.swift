//
//  ExtractInterface.swift
//  Rerfactoring
//
//  Created by 1 on 1/28/18.
//  Copyright © 2018 User. All rights reserved.
//
//Несколько клиентов пользуются одной и той же частью интерфейса класса. Либо в двух классах часть интерфейса оказалась общей.
//Выделите эту общую часть в свой собственный интерфейс


import Foundation

//before
class Accountant {
    func getName(){}
    func getDepartment(){}
    func getSkills(){}
    func getHourRate(){}
    func getYearSalary(){}
    //....
}

//after
class SalaryCalculator {
    var accountID: Int?
    func getHourRate() {}
    func getYearSalary() {}
    
    init(accountID: Int) {
        self.accountID = accountID
    }
}

class AccountantAfter {
    func getName(){}
    func getDepartment(){}
    func getSkills(){}
    
    var salaryDelegate: SalaryCalculator?
    
    init(accountID: Int) {
        salaryDelegate?.accountID = accountID
    }
}
