//
//  GoalsViewController.swift
//  GoalPostApp
//
//  Created by Sonali Patel on 3/22/18.
//  Copyright © 2018 Sonali Patel. All rights reserved.
//

import UIKit

class GoalsViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func addGoalBtnWasPressed(_ sender: Any) {
        print("Goal button was pressed")
    }
    
}

