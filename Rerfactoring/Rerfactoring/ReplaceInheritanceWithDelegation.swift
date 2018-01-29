//
//  ReplaceInheritanceWithDelegation.swift
//  Rerfactoring
//
//  Created by 1 on 1/28/18.
//  Copyright © 2018 User. All rights reserved.
//
//У вас есть подкласс, который использует только часть методов суперкласса или не хочет наследовать его данные.
//Создайте поле и поместите в него объект суперкласса, делегируйте выполнение методов объекту-суперклассу, уберите наследование.

import Foundation

class Car {
    var gasolineConsumtion: Double?
    var motorCapacity: Double?
    func getMaxSpeed() {}
    
}

class ElectroCar: Car {}

//after

enum CarUsedEnergy {
    case gasoline
    case electro
}

protocol CarProtocol {
    func getEnginePower()
    func getMaxDistance()
    func getMaxSpeed()
}

class CarNew: CarProtocol {

    var type: CarUsedEnergy = .gasoline
    
    func getMaxSpeed() {
        //calculations
    }
    func getMaxDistance() {
        //calc
    }
    
    func getEnginePower() {
        //calc
    }
}

class NewElectro: CarProtocol {
    
    let car = CarNew()
    
    init() {
        car.type = .electro
    }
    
    
    func  getMaxSpeed(){
        car.getMaxSpeed()
    }
    
    func getMaxDistance() {
        car.getMaxDistance()
    }
    
    func getEnginePower() {
        car.getEnginePower()
    }

}
