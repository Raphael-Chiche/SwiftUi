//
//  VueTodo.swift
//  SwiftApp
//
//  Created by CHICHE Raphaël on 03/11/2025.
//
import SwiftUI

struct todoView: View {
    @State var todoModel = TodoViewModel()
    @State var newNextTask: String = ""
    
    var body: some View {
        VStack{
            if let id = todoModel.todo?.id, let title = todoModel.todo?.title {
                Text("\(id)")
                Text("\(title)")
            }
            
            Button("Add 1"){
                todoModel.count += 1
            }
            Button("delete 1"){
                todoModel.count -= 1
            }
        }
        .padding()
        .task {
            await todoModel.fetchTodo()
        }
        .onChange(of: todoModel.count) { _, _ in
            Task {
                await todoModel.fetchTodo()
            }
        }
        
    }
}
