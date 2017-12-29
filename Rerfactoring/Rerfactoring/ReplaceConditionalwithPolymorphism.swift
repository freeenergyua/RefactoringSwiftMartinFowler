//
//  ReplaceConditionalwithPolymorphism.swift
//  Rerfactoring
//
//  Created by User on 18.12.17.
//  Copyright © 2017 User. All rights reserved.
//

import Foundation


enum BirdType {
    case EUROPEAN
    case AFRICAN
    case UA
}

class ReplaceConditionalwithPolymorphism {
    
    func before() {
        let speed = Bird().getBirdSpeed()
    }
    
    func after() {
        let speed = EuBird().getSpeed()
    }
}

class Bird {
    
    let birdType: BirdType = .AFRICAN
    
    func getBirdSpeed()-> Int {
        switch self.birdType {
        case .EUROPEAN:
            return 10
        case .AFRICAN:
            return 20
        case .UA:
            return 30
        }
    }
}

class EuBird: Bird {
    func getSpeed() -> Int {
        return 10
    }
}

class AfBird: Bird {
    func getSpeed() -> Int {
        return 20
    }
}

class UaBird: Bird {
    func getSpeed() -> Int {
        return 30
    }
}