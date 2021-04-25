//
//  Task.swift
//  FireTask
//
//  Created by Avijeet Pandey on 25/04/21.
//

import Foundation

struct Task{
    var title : String
    var completed : Bool
}

#if DEBUG
    let taskData = [
        Task(title: "Implement UI" , completed: true),
        Task(title: "Integrate Firebase" , completed: false)
    ]
#endif
