//
//  ExtractSuperclass.swift
//  Rerfactoring
//
//  Created by 1 on 1/28/18.
//  Copyright © 2018 User. All rights reserved.
//
//У вас есть два класса с общими полями и методами.
//Создайте для них общий суперкласс и перенесите туда одинаковые поля и методы.

import Foundation

class Player {
    func getNickName()-> String {return "player"} //moved from subclass
    func getHoursPlayed()-> Int {return 100}
}

class PlayerFIFA: Player {
    func getGoals() -> Int {return 100}
}

class PlayerWOT: Player {
    func getKills() -> Int {return 100}
}
