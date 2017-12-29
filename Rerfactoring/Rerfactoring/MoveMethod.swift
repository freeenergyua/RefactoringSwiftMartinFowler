//
//  MoveMethod.swift
//  Rerfactoring
//
//  Created by User on 25.11.17.
//  Copyright © 2017 User. All rights reserved.
//

import Foundation

//Create a new method with a similar body in the class it uses most. Either turn the old method into a simple delegation, or remove it altogether.

class MoveMethod {
    func before() {
       let account = Account()
        account.accountType.getTaxRate()
    }
    
    func after() {
        
    }
}

class Account {
    init(){
        accountType = .usual
        taxBaseRate = 0.0
    }
    var accountType: AccountType
    var taxBaseRate: Float
    
    func getTaxMultiplier() -> Int {
        switch accountType {
        case .usual:
            return   2
        case .vip:
            return   3
        }
    }
    
}

enum AccountType: Int {
    case usual
    case vip
    
    func getTaxRate()-> Int {
        switch self {
        case .usual:
            return 2
        case .vip:
            return 3
        }
    }
}