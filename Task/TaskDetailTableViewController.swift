//
//  TaskDetailTableViewController.swift
//  Task
//
//  Created by Karl Pfister on 5/19/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class TaskDetailTableViewController: UITableViewController {
    
    var task: Task?
    var dueDateValue: NSDate?
    
    
    
    //MARK: - Outlets and Properties
    
    
    @IBOutlet weak var taskNameField: UITextField!
    
    @IBOutlet weak var taskDueField: UITextField!
    
    @IBOutlet weak var taskNotesField: UITextView!
    
    @IBOutlet var dueDatePicker: UIDatePicker!
    
    
    //Mark: - Actions
    
    
    @IBAction func saveButtonTapped(sender: AnyObject) {
        
        
    }
    
    @IBAction func userTappedView(sender: AnyObject) {
        self.taskDueField.resignFirstResponder()
        self.taskNotesField.resignFirstResponder()
        self.taskNameField.resignFirstResponder()
    }
    
    
    @IBAction func datePickerValueChanged(sender: UIDatePicker) {
        self.taskDueField.text = sender.date.stringValue()  // This sends the date to the text field as a string. Which is readable
        self.dueDateValue = sender.date // This implements the action to store the updated date value
    }
    
    
    
    
    
    
    
    
    
    //Mark: life cycles
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        taskDueField.inputView = dueDatePicker

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    //MARK: - Life Cycles
    
    
    func updateWithTask(task: Task) {
        self.task = task
        
        title = task.name
        taskNameField.text = task.name
        
        if let due = task.due {
            taskDueField.text = due.stringValue() 
        }
        
        if let notes = task.notes {
            taskNotesField.text = notes // This is a view and i named it a field -_-
        }
        
    }
    
    
    
    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
