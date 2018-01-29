//
//  PushDownMethod.swift
//  Rerfactoring
//
//  Created by 1 on 1/28/18.
//  Copyright © 2018 User. All rights reserved.
//
//Поведение, реализованное в суперклассе, используется только одним или несколькими подклассами.
//Переместите это поведение в подклассы.
import Foundation

protocol BirdProtocol {
    func fly()
}

class Animal {
    //func fly(){}
    //move to subclass or protocol Birds
}

class SmartBird : Animal {
     func fly(){}
}
