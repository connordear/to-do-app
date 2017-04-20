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
        
        //Create a Task from the information entered by the user
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let task = Task(context: context)
        task.important = importantSwitch.isOn
        task.name = taskNameTextField.text!
        
        //Save data
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        //Pop Back
        navigationController!.popViewController(animated: true)
    }

}
