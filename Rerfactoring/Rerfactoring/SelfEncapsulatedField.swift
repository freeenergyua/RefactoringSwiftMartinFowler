//
//  SelfEncapsulatedField.swift
//  Rerfactoring
//
//  Created by User on 25.11.17.
//  Copyright © 2017 User. All rights reserved.
//

import Foundation
//You are accessing a field directly, but the coupling to the field is becoming awkward.

//Create getting and setting methods for the field and use only those to access the field.
class IntRange {
    private var low: Int
    private var high: Int
    
    init(low: Int, high: Int) {
        self.low = low
        self.high = high
    }
    
    func grow(factor: Int) {
        self.high *= factor
    }
    
    func includes(arg: Int) -> Bool {
        return arg >= self.low && arg <= self.high
    }
}