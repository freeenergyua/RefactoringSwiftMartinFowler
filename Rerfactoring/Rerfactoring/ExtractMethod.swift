//
//  ExtractMethod.swift
//  Rerfactoring
//
//  Created by User on 18.11.17.
//  Copyright © 2017 User. All rights reserved.
//

import Foundation

//You have a code fragment that can be grouped together.
class ExtractMethod {
    
    var clientsArr:[Client] = [Client.init(name: "Bob", money: 10.0, age: 30),
                               Client.init(name: "Jack", money: 20.0, age: 50)]
    var clientsDebt: Float = 0.0
    
    //before
    func getClientsInfo() {
        //Print header
        print("**************************")
        print("Info about client")
        print("**************************")
        
        //Print clients info
        for (_ , client) in clientsArr.enumerated() {
            self.clientsDebt += client.money
            
            //Refactor: ExtractMethod - printDetails method
            print("client name - \(client.name)")
            print("client amount - \(client.money)")
            
        }
    }
    
    //after
    //ExtractMethod
    func printDetails(client: Client) {
        print("client name - \(client.name)")
        print("client amount - \(client.money)")
    }
}

