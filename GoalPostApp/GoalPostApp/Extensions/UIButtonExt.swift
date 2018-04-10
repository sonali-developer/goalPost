//
//  UIButtonExt.swift
//  GoalPostApp
//
//  Created by Sonali Patel on 4/10/18.
//  Copyright © 2018 Sonali Patel. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    func setSelectedColor() {
        self.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
    }
    
    func setDeselectedColor() {
        self.backgroundColor = #colorLiteral(red: 0.6980392157, green: 0.8666666667, blue: 0.6862745098, alpha: 1)
    }
}
