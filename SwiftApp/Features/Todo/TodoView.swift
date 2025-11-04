//
//  VueTodo.swift
//  SwiftApp
//
//  Created by CHICHE Raphaël on 03/11/2025.
//
import SwiftUI

struct TodoView: View {
    @State var todoModel = TodoViewModel()
    @State var newNextTask: String = ""
    
    
    var body: some View {
        VStack{
            if let id = todoModel.todo?.id, let title = todoModel.todo?.title {
                Text("\(id)")
                Text("\(title)")
            }
            
            Button("Add 1"){
                Task {await todoModel.increment()}
            }
            Button("delete 1"){
                Task{await todoModel.decrement()}	
            }
        }
        .padding()
        .task {
            await todoModel.fetchTodo()
        }
        
    }
}

#Preview {
    TodoView()
}
