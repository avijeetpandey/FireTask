//
//  ContentView.swift
//  FireTask
//
//  Created by Avijeet Pandey on 25/04/21.
//

import SwiftUI

struct TaskListView: View {
    @ObservedObject var taskListVM = TaskListViewModel()
    let tasks = taskData
    var body: some View {
        NavigationView{
            VStack(alignment: .leading) {
                List(taskListVM.taskCellViewModels){ taskCellVM in
                    TaskCell(taskCellVM: taskCellVM)
                }
                Button(action:{}){
                    HStack{
                        Image(systemName:"plus.circle.fill")
                            .resizable()
                            .frame(width:20,height:20)
                        Text("Add new task")
                    }
                }.padding()
            }.navigationBarTitle("Tasks")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView()
    }
}

struct TaskCell: View {
    @ObservedObject var taskCellVM : TaskCellViewModel
    var body: some View {
        HStack{
            Image(systemName: taskCellVM.task.completed ? "checkmark.circle.fill" : "circle")
                .resizable()
                .frame(width:20,height:20)
            Text(taskCellVM.task.title)
        }
    }
}
