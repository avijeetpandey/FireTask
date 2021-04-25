//
//  TaskListViewModel.swift
//  FireTask
//
//  Created by Avijeet Pandey on 25/04/21.
//

import Foundation
import Combine

class TaskListViewModel:ObservableObject{
    @Published var taskCellViewModels = [TaskCellViewModel]()
    private var cancellables = Set<AnyCancellable>()
    
    init(){
        self.taskCellViewModels = taskData.map{ task in
            TaskCellViewModel(task: task)
        }
    }
}
