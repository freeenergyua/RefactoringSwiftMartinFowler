//
//  ReplaceExceptionWithTest.swift
//  Rerfactoring
//
//  Created by 1 on 1/20/18.
//  Copyright © 2018 User. All rights reserved.
//
//Вы выбрасываете исключение там, где можно было бы обойтись простой проверкой условия.
//Замените выбрасывание исключения проверкой этого условия.

import Foundation

class ReplaceExceptionWithTest {
    
    func refactored(coins: Int) {
        if coins > 0 {
            //no money
            //Простой условный оператор иногда может быть очевиднее блока обработки исключения.
        }
    }
}
