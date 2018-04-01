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
        tableView.delegate = self
        tableView.dataSource = self
        tableView.isHidden = false
    }

    @IBAction func addGoalBtnWasPressed(_ sender: Any) {
        print("Goal button was pressed")
    }
    
}

extension GoalsViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "goalTableViewCell") as? GoalTableViewCell else { return UITableViewCell() }
        cell.configureCell(description: "Eat Salad twice a week", type: GoalType.shortTerm ,  goalProgressAmount: 2)
        return cell
    }
}

