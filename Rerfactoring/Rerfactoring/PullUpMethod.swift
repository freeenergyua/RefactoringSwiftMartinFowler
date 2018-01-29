//
//  PullUpMethod.swift
//  Rerfactoring
//
//  Created by 1 on 1/28/18.
//  Copyright © 2018 User. All rights reserved.
//
//Подклассы имеют методы, которые делают схожую работу.
//В этом случае нужно сделать методы идентичными, а затем переместить их в суперкласс.

import Foundation

class PullUpMethod {
    //watch classes in PullUpField class
}

extension SoldierBefore {
    func getHealth(){}
}
extension KiborgBefore {
    func getHealth(){}
}

//we just need move method to basic class
extension UnitAfter {
    func getHealth(){}
}
