    //
//  TodoModel.swift
//  SwiftApp
//
//  Created by CHICHE Raphaël on 03/11/2025.
//
import SwiftUI

@Observable
class TodoViewModel {
    var todo: Todo?
//    var NextTask : String = "1"
    var count: Int = 1
    
    func fetchTodo() async {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/todos/\(count)") else {
            return
        }
        do {
            let (data, response) = try await URLSession.shared.data(from: url)
            
            guard let httpResponse = response as? HTTPURLResponse,
                  httpResponse.statusCode == 200 else {
                return
            }
            
            let decoded = try JSONDecoder().decode(Todo.self, from: data)
            todo = decoded
        } catch {
        }
    }
    
    
    func increment() async{
        count += 1
        await fetchTodo()
    }
    
    func decrement() async{
        count -= 1
        await fetchTodo()
    }
}
