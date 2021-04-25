//
//  ContentView.swift
//  FireTask
//
//  Created by Avijeet Pandey on 25/04/21.
//

import SwiftUI

struct TaskListView: View {
    var body: some View {
        NavigationView{
            VStack(alignment: .leading) {
                List(0 ..< 5){ item in
                    Image(systemName:"circle")
                        .resizable()
                        .frame(width:20,height:20)
                    Text("Implement the UI")
                }
                Button(action:{}){
                    HStack{
                        Image(systemName:"plus.circle.fill")
                            .resizable()
                            .frame(width:20,height:20)
                        Text("Add new task")
                    }.padding()
                }.navigationBarTitle("Tasks")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView()
    }
}
