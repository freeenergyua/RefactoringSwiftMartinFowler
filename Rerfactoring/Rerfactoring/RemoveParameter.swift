//
//  RemoveParameter.swift
//  Rerfactoring
//
//  Created by Andre Gulyi on 29.12.17.
//  Copyright © 2017 User. All rights reserved.
//

import Foundation

class RemoveParameter {
    func before(param1: Int, param2: Int, param3: Int?, sumOfParams: Int, forFutureCalcucation: Int?) {}
    
    func after(params: [Int]) {}
    
    func test() {
        let entity = RemoveParameter()
        let params = [10,20]
        entity.after(params: params)
    }
}
