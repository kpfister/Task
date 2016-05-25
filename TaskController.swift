//
//  TaskController.swift
//  Task
//
//  Created by Karl Pfister on 5/25/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation
import CoreData

class TaskController {
    
    static let sharedInstance = TaskController()
    
    // MARK: Task Property
    
    var tasks: [Task] = []
    
    // : Computed Properties
    
    var completedTasks: [Task] {
        let request = NSFetchRequest(entityName: "Task")
        let moc = Stack.sharedStack.managedObjectContext
        let tasks = (try? moc.executeFetchRequest(request)) as? [Task] ?? []
        return tasks.filter({$0.isComplete.boolValue})
        
    }
    
    var inCompleteTasks: [Task] {
        let request = NSFetchRequest(entityName: "Taks")
        let moc = Stack.sharedStack.managedObjectContext
        let tasks = (try? moc.executeFetchRequest(request)) as? [Task] ?? []
        return tasks.filter({!$0.isComplete.boolValue})
    }
    
    
    // MARK: CRUD methods
    
    func addTask(name: String, notes: String?, due: NSDate?) {
        
    }
    
    func removeTask(task: Task) {
        
    }
    
    func updateTask(task: Task, name: String, notes: String?, due: NSDate?, isComplete: Bool) {
        
    }
    
    func saveToPersistentStore() {
        
    }
    
    func fecthTasks() -> [Task] {
        return[]
    }
    
    
}
















