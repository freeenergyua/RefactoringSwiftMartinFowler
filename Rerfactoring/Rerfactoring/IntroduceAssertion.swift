//
//  IntroduceAssertion.swift
//  Rerfactoring
//
//  Created by User on 19.12.17.
//  Copyright © 2017 User. All rights reserved.
//

import Foundation

class IntroduceAssertion {
    
    var age: Int = 0
    
    func before() {
        
    }
    
    func after() {
       assert(age >= 0, "Magic in life")
    }
}
