//
//  LocalExtension.swift
//  Rerfactoring
//
//  Created by User on 25.11.17.
//  Copyright © 2017 User. All rights reserved.
//

import Foundation

//В служебном классе отсутствуют некоторые методы, которые вам нужны. При этом добавить их в этот класс вы не можете.
//Создайте новый класс, который бы содержал эти методы, и сделайте его наследником служебного класса, либо его обёрткой.

class LocalExtension {
    func getNextDateFor(date: NSDate) {
        let nextDate = date.addingTimeInterval(24*60*60)
    }
    
    func after() {
        let now = NSDate()
        let next = NSDate.nextDateFor(date: now)
    }
}

extension NSDate {
    static func nextDateFor(date: NSDate) -> NSDate {
        return date.addingTimeInterval(24*60*60)
    }
}
