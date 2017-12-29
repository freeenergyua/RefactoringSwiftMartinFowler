//
//  MoveField.swift
//  Rerfactoring
//
//  Created by User on 25.11.17.
//  Copyright © 2017 User. All rights reserved.
//

import Foundation
import UIKit
//Создайте поле в новом классе и перенаправьте к нему всех пользователей старого поля.

class CallViewController: UIViewController {
    
    let callView = UIView()
    let mediaCall = MediaCall()
    let viewAnimator = ViewAnimator()
    
    func before() {
        UIView.animate(withDuration: 0.5) {
            
            if self.mediaCall.isAudio {
                self.callView.frame = CGRect(origin: .zero, size: CGSize(width: 100, height: 100))
            } else {
                self.callView.frame = CGRect(origin: .zero, size: CGSize(width: 200, height: 200))
            }
            
        }
    }
    
    func after() {
        self.viewAnimator.setBasicFrame()
    }
        
}

class MediaCall {
    var isAudio: Bool = false
}

class ViewAnimator {
    let callView = UIView()
    let mediaCall = MediaCall()
    
    func setBasicFrame() {
        callView.frame = mediaCall.isAudio ? CGRect(origin: .zero, size: CGSize(width: 100, height: 100)) : CGRect(origin: .zero, size: CGSize(width: 200, height: 200))
    }
}


