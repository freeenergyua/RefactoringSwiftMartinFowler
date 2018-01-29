//
//  ReplaceParameterWithExplicitMethods.swift
//  Rerfactoring
//
//  Created by 1 on 1/24/18.
//  Copyright © 2018 User. All rights reserved.
//

//Метод разбит на части, каждая из которых выполняется в зависимости от значения какого-то параметра.
import Foundation

class ReplaceParameterWithExplicitMethods {
    
    var height: Int?
    var width: Int?
    
    func setValue(name: String, value: Int) {
        let entity = ReplaceParameterWithExplicitMethods()
        if (name == "height") {
            entity.height = value
            return
        }
        if (name == "width") {
            entity.width = value
            return
        }
    }
    
    //after
    
    
    func setHeight(value: Int, entity: ReplaceParameterWithExplicitMethods) {
        entity.height = value
    }
    
    func setWidth(value: Int, entity: ReplaceParameterWithExplicitMethods) {
        entity.width = value
    }
    
}
