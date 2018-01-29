//
//  ExtractVariable.swift
//  Rerfactoring
//
//  Created by Andre Gulyi on 29.01.18.
//  Copyright © 2018 User. All rights reserved.
//
//У вас есть сложное для понимания выражение.
//Поместите результат выражения или его части в отдельные переменные, поясняющие суть выражения.

import UIKit

class ExtractVariable {
    func before() {
        if UIDevice.current.orientation.isPortrait && UIScreen.main.nativeBounds.height == 1136 && UIDevice.current.batteryLevel > 20.0 {

        }
    }
    
    //after
    var  isIphoneXAndPortrait: Bool {
        return UIDevice.current.orientation.isPortrait && UIScreen.main.nativeBounds.height == 1136
    }
    var isBatteryGood: Bool {
        return UIDevice.current.batteryLevel > 20.0
    }
    
    func refactored() {
        if (isIphoneXAndPortrait && isBatteryGood) {
            
        }
    }
}
