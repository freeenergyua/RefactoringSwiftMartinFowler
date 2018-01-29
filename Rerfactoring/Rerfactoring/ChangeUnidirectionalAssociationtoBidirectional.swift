//
//  Change UnidirectionalAssociationtoBidirectional.swift
//  Rerfactoring
//
//  Created by User on 03.12.17.
//  Copyright © 2017 User. All rights reserved.
//

import Foundation
//You have two classes that need to use each other's features, but there is only a one-way link
class ChangeUnidirectionalAssociationtoBidirectional {}

private class PersonNew {
    
    var name: String?
    var kids = [Person1]()
    
    func description() -> String {
        
        return "Person: name = \(name)"
        
    }
    var personArray = [Person1]()
    
    func findParent(person: Person1) -> Person1? {
        for aPerson in self.personArray {
            for kid in aPerson.kids {
                if kid === person {
                    return aPerson
                    
                }
            }
        }
        return nil
    }
}
//after we dont need findParent()

private class Person1 {
    var name: String?
    var kids = [Person1]()
    var parent: Person1? = nil
}
