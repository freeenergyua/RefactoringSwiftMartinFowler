//
//   SeparateQueryFromModifier.swift
//  Rerfactoring
//
//  Created by 1 on 1/28/18.
//  Copyright © 2018 User. All rights reserved.
//

//У вас есть метод, который возвращает какое-то значение, но при этом в процессе работы он изменяет что-то внутри объекта.Этот рефакторинг является реализацией принципа разделения команд от запросов данных. Суть принципа сводится к тому, чтобы отделять код получения каких-то данных от кода, который изменяет что-то внутри объекта.

import Foundation

class SeparateQueryFromModifier {
    
    func getSomethingAndChangeObject(_ object: inout Int)-> Int {
        object = object + 1
        return object
    }
    
    
    static var someInt = 3
    //after
    static func getObject()-> Int {return self.someInt}
    
    func increaseObjectValue(object: inout Int)-> Int {
        object = object + 1
        return object
    }
    
    func after(){
        var object = SeparateQueryFromModifier.getObject()
        let changedObj = self.increaseObjectValue(object: &object)
    }
}
