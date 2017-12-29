//
//  SubstituteAlgorithm.swift
//  Rerfactoring
//
//  Created by User on 25.11.17.
//  Copyright © 2017 User. All rights reserved.
//

import Foundation
//You want to replace an algorithm with one that is clearer.
class SubstituteAlgorithm {
    
    func test() {
        let namesArray = ["Bob","Rob","Steave"]
        for (_ , person) in namesArray.enumerated() {
            if (person == "Bob") {
                print("bob")
            }
            
            if (person == "Volter") {
                print(person)
            }
            
            if (person == "Maximus") {
                print(person)
            }
        }
    }
    //Replace the body of the method with the new algorithm.
    func refactored() {
        let namesArray = ["Bob","Rob","Steave"]
        for (index, person) in namesArray.enumerated() {
            if namesArray.contains(namesArray[index]) {
                print(person)
            }
        }
    }
}
