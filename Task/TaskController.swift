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
    
    static let sharedInstance = TaskController ()
    
    var tasks: [Task] = [] {
        
    }
    
}


addTask(name: String, notes: String?, due: NSDate?), removeTask(task: Task), updateTask(task: Task, name: String, notes: String?, due: NSDate?, isComplete: Bool), saveToPersistentStore(), and fetchTasks() -> [Task