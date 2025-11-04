//
//  ContentView.swift
//  SwiftApp
//
//  Created by CHICHE Raphaël on 03/11/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            NavigationLink("Aller au détails") {
                CounterView()
            }
            NavigationLink("Aller à Todo") {
                todoView()
            }
            NavigationLink("Aller sur le profil") {
                ProfilView()
            }
            .navigationTitle("Accueil")
            .tint(.blue)
        }
    }
}

#Preview {
    ContentView()
}

