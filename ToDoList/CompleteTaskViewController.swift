//
//  CompleteTaskViewController.swift
//  ToDoList
//
//  Created by Connor Dear on 2017-04-20.
//  Copyright © 2017 Connor Dear. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    @IBOutlet weak var taskName: UILabel!
    
    var previousVC = TaskListViewController()
    var task = Task()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if task.important {
            taskName.text = "‼️\(task.name)"
        } else {
            taskName.text = task.name
        }
        
    }

    @IBAction func completeTask(_ sender: Any) {
        previousVC.taskList.remove(at: previousVC.selectedRow)
        navigationController?.popToViewController(previousVC, animated: true)
        previousVC.tableView.reloadData()
    }
    
}
