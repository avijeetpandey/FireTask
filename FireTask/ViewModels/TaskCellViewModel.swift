//
//  TaskCellViewModel.swift
//  FireTask
//
//  Created by Avijeet Pandey on 25/04/21.
//

import Foundation
import Combine

class TaskCellViewModel: ObservableObject , Identifiable {
    @Published var task : Task
    
    var id:String = ""
    @Published var completionIconName = ""
    private var canceballes = Set<AnyCancellable>()
    
    init(task:Task){
        self.task = task
        
        $task.map{
            task in
            task.completed ? "checkmark.circle.fill" : "circle"
        }.assign(to: \.completionIconName,on: self)
        .store(in: &canceballes)
        
        $task.map{ task in
            task.id
        }.assign(to: \.id,on:self)
        .store(in: &canceballes)
    }
}
