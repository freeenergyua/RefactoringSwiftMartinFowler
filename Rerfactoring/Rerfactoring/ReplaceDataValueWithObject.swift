//
//  ReplaceDataValueWithObject.swift
//  Rerfactoring
//
//  Created by User on 25.11.17.
//  Copyright © 2017 User. All rights reserved.
//
//В классе (или группе классов) есть поле простого типа. У этого поля есть своё поведение и связанные данные.
//Создайте новый класс, поместите в него старое поле и его поведения, храните объект этого класса в исходном классе.
import Foundation

//before
class Order {
    var customer: String = ""
    func changeCustomer(customer: String){}
}

//after
class OrderAfter {
    var customer: Customer?
}


class Customer {
    var name: String = ""
}
