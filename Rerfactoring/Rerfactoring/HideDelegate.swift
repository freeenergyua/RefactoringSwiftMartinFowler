//
//  HideDelegate.swift
//  Rerfactoring
//
//  Created by User on 25.11.17.
//  Copyright © 2017 User. All rights reserved.
//

import Foundation
//Создайте новый метод в классе А, который бы делегировал вызов объекту B. Таким образом, клиент перестанет знать о классе В и зависеть от него.

protocol GetManager {
    func getManager()
}

class HideDelegate {
    var person: PersonHD?
    var department: Department?
    
    func before() {
        self.person = PersonHD()
        let department = self.person!.getDepartmentFor(person: person!)
        let manager = department.getManager()
    }
    
    func after() {
         let manager = self.person?.getManager()
    }
}

class Department {
    func getManager() {}
}

class PersonHD {
//    var departmentDelegate: GetManager
    
    func getDepartmentFor(person: PersonHD) -> Department {
        return Department()
    }
}

extension PersonHD: GetManager {
    func getManager() {}
}

