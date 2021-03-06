//
//  Task.swift
//  FireTask
//
//  Created by Avijeet Pandey on 25/04/21.
//

import Foundation

struct Task : Identifiable {
    var id : String = UUID().uuidString
    var title : String
    var completed : Bool
}

#if DEBUG
    let taskData = [
        Task(title: "Implement UI" , completed: true),
        Task(title: "Integrate Firebase" , completed: false),
        Task(title:"Launch App",completed:true)
    ]
#endif
