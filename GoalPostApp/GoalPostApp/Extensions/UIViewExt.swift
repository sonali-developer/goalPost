//
//  UIViewExt.swift
//  GoalPostApp
//
//  Created by Sonali Patel on 4/10/18.
//  Copyright © 2018 Sonali Patel. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func  bindToKeyboard() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange(_notification:)), name: NSNotification.Name.UIKeyboardWillChangeFrame, object: nil)
    }
    
   @objc func keyboardWillChange(_notification: NSNotification){
      let duration = _notification.userInfo![UIKeyboardAnimationDurationUserInfoKey] as! Double
      let curve = _notification.userInfo![UIKeyboardAnimationCurveUserInfoKey] as! UInt
      let startingFrame = (_notification.userInfo![UIKeyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
      let endingFrame = (_notification.userInfo![UIKeyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
    let deltaY = endingFrame.origin.y - startingFrame.origin.y
    
    UIView.animateKeyframes(withDuration: duration, delay: 0.0, options: UIViewKeyframeAnimationOptions.init(rawValue: curve), animations: {
        self.frame.origin.y += deltaY
    }, completion: nil)
    }
}

