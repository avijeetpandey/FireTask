//
//  ContentView.swift
//  FireTask
//
//  Created by Avijeet Pandey on 25/04/21.
//

import SwiftUI

struct TaskListView: View {
    @ObservedObject var taskListVM = TaskListViewModel()
    @State var presentAddNewItem = false
    let tasks = taskData
    var body: some View {
        NavigationView{
            VStack(alignment: .leading) {
                List{
                    ForEach(taskListVM.taskCellViewModels){ taskCellVM in
                        TaskCell(taskCellVM: taskCellVM)
                    }
                    if(presentAddNewItem){
                        TaskCell(taskCellVM:TaskCellViewModel(task: Task( title:"", completed:false))){ task in
                            self.taskListVM.addTask(task: task)
                            self.presentAddNewItem.toggle()
                        }
                    }
                }
                Button(action:{self.presentAddNewItem.toggle()}){
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
    
    var onComit : (Task) -> (Void) = { _ in}
    
    var body: some View {
        HStack{
            Image(systemName: taskCellVM.task.completed ? "checkmark.circle.fill" : "circle")
                .resizable()
                .frame(width:20,height:20)
            TextField("Enter task title",text: $taskCellVM.task.title,onCommit:{
                self.onComit(self.taskCellVM.task)
            })
        }
    }
}
