//
//  EncapsulateCollection.swift
//  Rerfactoring
//
//  Created by User on 04.12.17.
//  Copyright © 2017 User. All rights reserved.
//

import Foundation

//Make it return a read-only view and provide add/remove methods.
class EncapsulateCollection {
    func getCourses() {}
    func setaddCourse(course: Course) {}
    func removeCourse(course: Course) {}
}


extension Array {
    subscript(safe index: Int) -> Element? {
        return index >= 0 && index < count ? self[index] : nil
    }
}

class Course {
    var name: String = ""
}