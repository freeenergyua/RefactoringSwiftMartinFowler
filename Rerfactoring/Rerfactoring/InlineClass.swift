//
//  InlineClass.swift
//  Rerfactoring
//
//  Created by User on 25.11.17.
//  Copyright © 2017 User. All rights reserved.
//

import Foundation

///Класс почти ничего не делает, ни за что не отвечает, и никакой ответственности для этого класса не планируется.
//Переместите все фичи из описанного класса в другой.

//go to ExtractClass revert functionality


class CoffeCustomer {
    let orderMaker = OrderMaker()
    func getCoffeCode()-> Int {return orderMaker.getCoffeCode()}
    func getCoffePrice()-> Double {return orderMaker.getCoffePrice()}
}

class OrderMaker {
    var caffe = Caffe()
    func getCoffeCode()-> Int {return caffe.getCoffeCode()}
    func getCoffePrice()-> Double {return caffe.getCoffePrice()}
}

class Caffe {
    func getCoffeCode()-> Int {return 1}
    func getCoffePrice()-> Double {return 2.9}
}

//Refactoring remove OrderMaker
//after
class CoffeCustomerAfter {
    var caffe = Caffe()
    func getCoffeCode()-> Int {return caffe.getCoffeCode()}
    func getCoffePrice()-> Double {return caffe.getCoffePrice()}
}
