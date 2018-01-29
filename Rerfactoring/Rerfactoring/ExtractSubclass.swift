//
//  ExtractSubclass.swift
//  Rerfactoring
//
//  Created by 1 on 1/28/18.
//  Copyright © 2018 User. All rights reserved.
//
//Класс имеет фичи, которые используются только в определённых случаях.
//Создайте подкласс и используйте его в этих случаях.
import Foundation

class City {
    var hasMetro: Bool = false
}

class Metropolis: City {
    override init() {
        super.init()
        hasMetro = true
    }
    
    func getMetroTicketPrice()-> Int {
        return 10
    }
}

