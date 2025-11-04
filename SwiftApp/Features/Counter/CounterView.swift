//
//  CounterView.swift
//  SwiftApp
//
//  Created by CHICHE Raphaël on 03/11/2025.
//

import SwiftUI



struct CounterView: View {
    @State var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Counter \(viewModel.counter)")
            Button("Add 10"){
                viewModel.counter += 10
            }
            Button("Reset"){
                viewModel.counter = 0
            }
     }
        .padding()
        .task {
            
        }
        NavigationStack{
            
            NavigationLink("Aller à l'accueil") {
                ContentView()
            }
            NavigationLink("Aller sur le profil") {
                ProfileView()
            }
        }
    }
}
