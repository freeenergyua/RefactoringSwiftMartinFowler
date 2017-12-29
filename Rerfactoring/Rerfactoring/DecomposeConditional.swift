//
//  DecomposeConditional.swift
//  Rerfactoring
//
//  Created by User on 05.12.17.
//  Copyright © 2017 User. All rights reserved.
//

import Foundation


class DecomposeConditional {
    
    
    func before(){
        
        //if day > September.lastDate && day < March.firstDay { print("winter") }
    }
    
    
    func after() {
        
        switch (self.getSeason(day: Date() as NSDate)) {
        case .summer:
            //doSomething
            break
        default:
            return
        }
    }
    
    func getSeason(day: NSDate) -> Season {
        //if day....work with detecting season
        return .spring
    }
}

enum Season {
    case summer
    case winter
    case spring
    case autumn
}
