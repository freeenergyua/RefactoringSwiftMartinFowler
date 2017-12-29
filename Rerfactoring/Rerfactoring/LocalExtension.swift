//
//  LocalExtension.swift
//  Rerfactoring
//
//  Created by User on 25.11.17.
//  Copyright © 2017 User. All rights reserved.
//

import Foundation


class LocalExtension {
    
}

extension NSDate {
    func nextDateFor(date: NSDate) -> NSDate {
        return date.addingTimeInterval(24*60*60)
    }
}
