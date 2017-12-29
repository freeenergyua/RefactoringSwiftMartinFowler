//
//  ReplaceRecordWithDataClass.swift
//  Rerfactoring
//
//  Created by User on 04.12.17.
//  Copyright © 2017 User. All rights reserved.
//

import Foundation

//You need to interface with a record structure in a traditional programming environment.

///This type of refactoring applies when a class has a property that represent a type of some kind and the code is depending on it. This usually manifests through if/else or switch statements.

//використовуємо для різних типів інтових перемінних які відображать стан обєкту - enum гуд
enum Belt {
    case White, Blue, Black
}

class Karateka {
    var belt = Belt.White
    
    func getTitle() -> String {
        switch belt {
        case .White :
            return "White belt karateka"
        case .Blue :
            return "Blue belt karateka"
        case .Black :
            return "Black belt karateka"
        }
    }
    
    func getLevel() -> String {
        switch belt {
        case .White :
            return "Beginner karateka"
        case .Blue :
            return "Intermediate karateka"
        case .Black :
            return "Advanced karateka"
        }
    }
}