//
//  DuplicateObservedData.swift
//  Rerfactoring
//
//  Created by User on 03.12.17.
//  Copyright © 2017 User. All rights reserved.
//

import UIKit

//You have domain data available only in a GUI control, and domain methods need access.
//Copy the data to a domain object. Set up an observer to synchronize the two pieces of data.

class DuplicateObservedData {
    static let startField: UITextField = UITextField()
    static let endField: UITextField = UITextField()
    static let lengthField: UITextField = UITextField()
    
    var firstName = DuplicateObservedData.startField.text
    var secondName = DuplicateObservedData.endField.text
    var agePerson = DuplicateObservedData.lengthField.text
    
    //send to server copy of final information after some checking before
    
    
    func after() {
        if !(firstName?.isEmpty)! && !(secondName?.isEmpty)! && (agePerson != nil) && (Int(agePerson!)! >= 19) {
            //send to server
        }
    }
    
}