//
//  RemoveMiddleMan.swift
//  Rerfactoring
//
//  Created by User on 25.11.17.
//  Copyright © 2017 User. All rights reserved.
//

import Foundation

//go to HideDeleagte and reverse

//Класс имеет слишком много методов, которые просто делегируют работу другим объектам.
//Удалите эти методы и заставьте клиента вызывать конечные методы напрямую.

class User {
    fileprivate var manager: Manager?
}

fileprivate class Manager {
    func getUserId(){
        //call UserDatabase
    }
    func getUserFriends() {
        //call UserDatabase
    }
    func getUserName(){
        //call UserDatabase
    }
}

//after
class UserWithoutMiddleMan {
    fileprivate var databaseManager: DatabaseManager?
}

fileprivate class DatabaseManager {
    //call UserDatabase
}
