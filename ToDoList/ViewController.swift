//
//  ViewController.swift
//  ToDoList
//
//  Created by Connor Dear on 2017-04-18.
//  Copyright © 2017 Connor Dear. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var taskList : [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        taskList = buildTaskList()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = taskList[indexPath.row]
        if task.important {
            cell.textLabel?.text = "‼️\(task.name)"
        } else {
            cell.textLabel?.text = task.name
        }
        return cell
    }

    func buildTaskList() -> [Task] {
        let task1 = Task()
        task1.name = "Go grocery Shopping"
        task1.important = true
        
        let task2 = Task()
        task2.name = "Hold David's Hand"
        task2.important = true
        
        let task3 = Task()
        task3.name = "Finish swift tutorial"
        task3.important = false
        
        let tasks = [task1, task2, task3]
        
        return tasks
    }

}
