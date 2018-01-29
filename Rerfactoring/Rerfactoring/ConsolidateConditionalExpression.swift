//
//  ConsolidateConditionalExpression.swift
//  Rerfactoring
//
//  Created by User on 05.12.17.
//  Copyright © 2017 User. All rights reserved.
//
//У вас есть несколько условных операторов, ведущих к одинаковому результату или действию.
//Объедините все условия в одном условном операторе.
import Foundation

class ConsolidateConditionalExpression {
    
    func before() {
//        if salary.isIndexed() {return 10}
//        if salary.taxPayedBefore() {return 3}
//        if salary.afterDelay() {return 20}
    }
    
    func isSalaryGood(salary: Int) -> Bool {
        //calculate all conditionals and return result
        let finalSumm = 0
        //if salary.isIndexed() {finalSumm + 10}
        //if salary.taxPayedBefore() {finalSumm + 3}
        //if salary.afterDelay() {finalSumm + 20}
        if finalSumm > 100 {
            return true
        }
        return false
    }
    
    func after() {
        if isSalaryGood(salary: 100) {
            ///
        }
    }
}
