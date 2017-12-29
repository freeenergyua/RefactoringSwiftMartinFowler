//
//  ReplaceNestedConditionalwithGuardClauses.swift
//  Rerfactoring
//
//  Created by User on 18.12.17.
//  Copyright © 2017 User. All rights reserved.
//

import Foundation
//Цель получить «плоский» список условных операторов, идущих один за другим

class ReplaceNestedConditionalwithGuardClauses {
    
    let isDead = false
    let isSeparated = true
    let isRetired = false
    
    
    func before() -> Int{
        var result = 0
        if (isDead){
            result = 10
        }
        else {
            if (isSeparated){
                result = 20
            }
            else {
                if (isRetired){
                    result = 40
                }
                else{
                    result = 43
                }
            }
        }
        return result
    }
    
    func after() -> Int {

        if (isDead){
            return 10
        }
        if (isSeparated){
            return 20
        }
        if (isRetired){
            return 30
        }
        return 40
    }
}