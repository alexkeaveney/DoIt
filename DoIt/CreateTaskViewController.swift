//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by admin on 11/05/2017.
//  Copyright © 2017 Alex Keaveney. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var importantSwitch: UISwitch!
    @IBOutlet weak var nameField: UITextField!
    
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    @IBAction func addTask(_ sender: Any) {
        
        //Create a task from the outlet information
        
        let task = Task()
        task.name = nameField.text!
        task.important = importantSwitch.isOn
        
        //Add new task to task array in previous view controller
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
        
    }
    
    
    



}
