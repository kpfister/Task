//
//  TaskController.swift
//  Task
//
//  Created by Karl Pfister on 5/19/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation
import CoreData



class TaskController{
    
    static let sharedInstance = TaskController()
    
    init() {
        self.tasks = fetchTasks()
    }
    
    
    
    var tasks: [Task] = []
    
    var completedTasks: [Task] {
        
        let request = NSFetchRequest(entityName: "Task")
        
        let moc = Stack.sharedStack.managedObjectContext
        
        let tasks = (try? moc.executeFetchRequest(request)) as? [Task] ?? []
        let completedTasks = tasks.filter({$0.isComplete == true})
        return completedTasks
        
        
    }
    
    var incompleteTasks: [Task] {
        let request = NSFetchRequest(entityName: "Task")
        let moc = Stack.sharedStack.managedObjectContext
        let tasks = (try? moc.executeFetchRequest(request)) as? [Task] ?? []
        let inCompleteTasks = tasks.filter({$0.isComplete == false})
        return inCompleteTasks
    }
    
    var mockTasks:[Task]{
        
        let task1 = Task(name: "Go home", notes: "Don't forget to drink", due: NSDate(), isComplete: false)
        
        let task2 = Task(name: "Play DarkSouls", isComplete : true)
        
        return [task1, task2]
    }
    
    
    
    
    
    
    func addTask(name: String, notes: String?, due:NSDate?) { // This is a method Signature
        
    }
    
    
    func removeTask(task: Task) {
        
    }
    
    
    func updateTask(task: Task, name: String, notes: String?, due: NSDate?, isComplete: Bool) {
        
    }
    
    
    
    func fetchTasks() -> [Task] {
        return mockTasks
    }
    
    func saveToPersistentStore() {
        
    }
    
    
    
    
    
}



//
//addTask(name: String, notes: String?, due: NSDate?), removeTask(task: Task), updateTask(task: Task, name: String, notes: String?, due: NSDate?, isComplete: Bool), saveToPersistentStore(), and fetchTasks() -> [Task