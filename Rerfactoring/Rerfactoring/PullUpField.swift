//
//  File.swift
//  Rerfactoring
//
//  Created by 1 on 1/28/18.
//  Copyright © 2018 User. All rights reserved.
//
//Два класса имеют одно и то же поле.
//Переместите поле в суперкласс, убрав его из подклассов.

import Foundation

class UnitBefore {}
class SoldierBefore: UnitBefore { var health = 0}
class KiborgBefore: UnitBefore {var health = 0}

class UnitAfter { var health =  0 }
class SoldierAfter: UnitAfter {}
class KiborgAfter: UnitAfter {}

