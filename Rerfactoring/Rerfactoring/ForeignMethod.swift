//
//  IntroduceForeignMethod.swift
//  Rerfactoring
//
//  Created by User on 25.11.17.
//  Copyright © 2017 User. All rights reserved.
//

import Foundation


class ForeignMethod {
    func before() -> NSDate {
        let date = NSDate(timeIntervalSince1970: 2)
        return date.addingTimeInterval(24*60*60)
    }
    
    func after() -> NSDate {
        return self.getNextDayFor(date: NSDate(timeIntervalSince1970: 2))
    }
    
    private func getNextDayFor(date: NSDate) -> NSDate {
        return date.addingTimeInterval(24*60*60)
    }

}
