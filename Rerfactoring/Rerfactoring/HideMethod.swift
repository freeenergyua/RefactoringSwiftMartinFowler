//
//  HideMethod.swift
//  Rerfactoring
//
//  Created by 1 on 1/21/18.
//  Copyright © 2018 User. All rights reserved.
//
//Метод не используется другими классами либо используется только внутри своей иерархии классов.
//Сделайте метод приватным или защищённым.
import Foundation
import UIKit

class HideMethod {
    static public func publicFunc() {
        //frameworks like UIKit
    }
    static internal func internalFunc() {
        //default
    }
    static private func privateFunc() {
        //only by class
    }
    static fileprivate func fileprivateFunc() {
        //only in file
    }
}

struct test {
    
    func test() {
        HideMethod.internalFunc()
        HideMethod.fileprivateFunc()
        HideMethod.publicFunc()
    }
}

