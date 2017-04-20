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
    
    var task : Task! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if task.important {
            taskName!.text = "‼️\(String(describing: task.name!))"
        } else {
            taskName!.text = task.name!
        }
        
    }

    @IBAction func completeTask(_ sender: Any) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        context.delete(task!)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        navigationController?.popViewController(animated: true)
    }
    
}
