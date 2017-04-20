//
//  AddTaskViewController.swift
//  ToDoList
//
//  Created by Connor Dear on 2017-04-20.
//  Copyright © 2017 Connor Dear. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {

    @IBOutlet weak var taskNameTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var previousVC = TaskListViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func addTask(_ sender: Any) {
        let task =  Task()
        task.important = importantSwitch.isOn
        task.name = taskNameTextField.text!
        previousVC.taskList.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }

}
