//
//  RemoveParameter.swift
//  Rerfactoring
//
//  Created by Andre Gulyi on 29.12.17.
//  Copyright © 2017 User. All rights reserved.
//
//no more than 3-4!!
import Foundation

class RemoveParameter {
    func before(param1: Int, param2: Int, param3: Int?, sumOfParams: Int, forFutureCalcucation: Int?) {}
    
    //if need send  these params
    var taxParams:(sum:Int, taxRate:Int, taxType: Int)?
    var creditParams:(creditType: Int, creditPeriod: Int)?
    
    func after(taxParams: (Int,Int,Int)?, creditParams: (Int, Int)?) {}
    
    func test() {
        let entity = RemoveParameter()
        entity.after(taxParams: taxParams, creditParams: creditParams)
    }
}
