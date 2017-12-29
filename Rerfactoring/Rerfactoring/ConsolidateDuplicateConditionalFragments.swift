//
//  ConsolidateDuplicateConditionalFragments.swift
//  Rerfactoring
//
//  Created by User on 06.12.17.
//  Copyright © 2017 User. All rights reserved.
//

import Foundation

class ConsolidateDuplicateConditionalFragments {

    
    func sendRequest(){}
    
    func before(some: Int) -> Int {
        if some > 10 {
            sendRequest()
            return some + 12
        }
        
        if some <= 10 {
            sendRequest()
            return some + 34
        }
    
        return 0
    }
    
    func after(some: Int) -> Int {
        sendRequest()
        
        if some > 10 {
            return some + 12
        }
        
        if some <= 10 {
            return some + 34
        }
        return 0
    }
}