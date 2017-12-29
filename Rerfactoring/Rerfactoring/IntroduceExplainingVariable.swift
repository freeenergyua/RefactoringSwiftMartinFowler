//
//  IntroduceExplainingVariable.swift
//  Rerfactoring
//
//  Created by User on 25.11.17.
//  Copyright © 2017 User. All rights reserved.
//

import UIKit

//You have a complicated expression.
class IntroduceExplainingVariable  {
    //Extract Variable
    
    static func getTestView() -> UIView {
        let mainView = UIView.init(frame: CGRect(x: 0, y: 0, width: 1000, height: 1000))
        let subView = UIView(frame: CGRect(origin: .zero, size: CGSize(width: 100, height: 100)))
        mainView.addSubview(subView)
        return mainView
    }
    
    func before() -> String {
        let view = IntroduceExplainingVariable.getTestView()
        if view.subviews.count > 0 && ((view.subviews.first!.frame.size.height) >= CGFloat(100.0)) {
            return "All is ok"
        }
        return "Not good result"
    }
    
    
    //Refactor: replace complicated expressions with bool variables
    func after() -> String {
        let view = IntroduceExplainingVariable.getTestView()
        let hasSubviews: Bool = view.subviews.count > 0
        let isFirstSubviewHeightMoreThan100 = (view.subviews.first?.frame.size.height)! > CGFloat(100.0)
        
        if hasSubviews && isFirstSubviewHeightMoreThan100 {
           return "ok"
        }
        return "failure"
    }
}
