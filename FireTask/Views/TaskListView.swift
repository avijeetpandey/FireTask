//
//  ContentView.swift
//  FireTask
//
//  Created by Avijeet Pandey on 25/04/21.
//

import SwiftUI

struct TaskListView: View {
    let tasks = taskData
    var body: some View {
        NavigationView{
            VStack(alignment: .leading) {
                List(tasks){ task in
                    TaskCell(task:task)
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
    let task : Task
    var body: some View {
        HStack{
            Image(systemName:"circle")
                .resizable()
                .frame(width:20,height:20)
            Text(task.title)
        }
    }
}
