//
//  TaskDetailTableViewController.swift
//  Task
//
//  Created by Karl Pfister on 5/25/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class TaskDetailTableViewController: UITableViewController {
    var dueDateValue: NSDate?
    
    //MARK: Outlets -
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var dueTextField: UITextField!
    @IBOutlet weak var notesTextView: UITextView!
    @IBOutlet var taskDatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dueTextField.inputView = taskDatePicker
    }

    
    //MARK: Actions -
    
    @IBAction func saveButtonTapped(sender: AnyObject) {
        
    }
    
    @IBAction func datePickerValueChanged(sender: UIDatePicker) {
        
        self.dueDateValue = sender.date
    }
    
    @IBAction func userTappedView(sender: AnyObject) {
        titleTextField.resignFirstResponder()
        dueTextField.resignFirstResponder()
        notesTextView.resignFirstResponder()
    }
    
    
    
    // MARK: LifeCyle Methods - 
    
   func updateWithTask(task: Task) {
    title = task.name
    titleTextField.text = task.name
    
    if let due = task.due{
        
    }
    
    if let notes = task.notes {
        notesTextView.text = notes
    }
    
    }

    // MARK: - Table view data source
}
