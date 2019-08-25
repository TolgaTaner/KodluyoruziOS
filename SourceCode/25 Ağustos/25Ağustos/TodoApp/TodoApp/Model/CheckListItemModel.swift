//
//  CheckListItemModel.swift
//  TodoApp
//
//  Created by Tolga TANER on 25.08.2019.
//  Copyright © 2019 Tolga TANER. All rights reserved.
//

import Foundation


enum Priority {
    case high
    case medium
    case low
    case noPriority
}

struct CheckListItemModel {
    
    var taskName:String
    var priority:Priority
    
    init(priority:Priority = .high, taskName:String = "") {
        self.priority = priority
        self.taskName = taskName
    }
    
}
