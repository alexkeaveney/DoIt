//
//  DeleteTaskViewController.swift
//  DoIt
//
//  Created by admin on 11/05/2017.
//  Copyright © 2017 Alex Keaveney. All rights reserved.
//

import UIKit

class DeleteTaskViewController: UIViewController {

    var previousVC = TasksViewController()
    var task = Task()
    
    @IBOutlet weak var taskName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        if (task.important) {
           taskName.text = "❗️ \(task.name!)"
        }
        else {
            taskName.text = task.name
        }
        
    }

    @IBAction func taskComplete(_ sender: Any) {
        
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
        
    }
    


}
