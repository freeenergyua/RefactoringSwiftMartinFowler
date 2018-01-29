//
//  IntroduceParameterObject.swift
//  Rerfactoring
//
//  Created by 1 on 1/28/18.
//  Copyright © 2018 User. All rights reserved.
//
//Problem: В ваших методах встречается повторяющаяся группа параметров.
//Solving: Замените эти параметры объектом.
import Foundation

class IntroduceParameterObject {
    
    func before(date: Date, index: Int, type: Int) {}
    func before1(date: Date, index: Int, type: Int) {}
    func before2(date: Date, index: Int, type: Int) {}
    
    var paramTuple: (Date, Int, Int) = (Date(),0,0)
    
    func after(parmas: (Date, Int, Int)){}
    
    func test() {
        self.after(parmas: self.paramTuple)
    }
    
}
