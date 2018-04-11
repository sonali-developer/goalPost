//
//  FinishGoalViewController.swift
//  GoalPostApp
//
//  Created by Sonali Patel on 4/10/18.
//  Copyright © 2018 Sonali Patel. All rights reserved.
//

import UIKit

class FinishGoalViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var createGoalBtn: UIButton!
    @IBOutlet weak var pointsTxtField: UITextField!
    
    var goalDescription: String!
    var goalType: GoalType!
    
    func initData(description: String, type:GoalType) {
        self.goalDescription = description
        self.goalType = type
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalBtn.bindToKeyboard()
        pointsTxtField.delegate = self
    }

    @IBAction func createGoalBtnWasPressed(_ sender: Any) {
        // Pass data into Core Data goal model
    }
    
}
