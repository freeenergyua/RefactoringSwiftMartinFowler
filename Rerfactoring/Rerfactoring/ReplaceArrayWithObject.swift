//
//  ReplaceArrayWithObject.swift
//  Rerfactoring
//
//  Created by User on 03.12.17.
//  Copyright © 2017 User. All rights reserved.
//

import Foundation

class ReplaceArrayWithObject {
    var arr = ["Lviv","2017"]
    //change to
    var lviv  = CityBuilder(name: "Lviv", bestYear: "2017")
    
    
}

struct  CityBuilder {
    var name: String = ""
    var bestYear: String = ""
}