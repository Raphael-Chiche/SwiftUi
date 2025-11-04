//
//  ProfilView.swift
//  SwiftApp
//
//  Created by CHICHE Raphaël on 03/11/2025.
//

import SwiftUI


struct ProfileView: View {
    @State var profilModel = ProfilViewModel()
    @State var newFirstName = "";
    @State var newLastName = "";
    
    @State private var showModif = false;
    
    var body: some View {
        VStack  {
            HStack (alignment: .bottom) {
                Text("Profile")
                    .font(.title)
                    .bold()
                Spacer()
                
                Button("Modifier"){
                    showModif = !showModif
                }
                    .buttonStyle(.borderedProminent)
                    .padding(.leading, 30.0)
            }
                .padding(20)
            Spacer()
            Image(systemName: "person.fill")
                .resizable()
                .scaledToFit()
                .frame(height: 100)
            List {
                    Text("\(profilModel.firstName)")
                    Text("\(profilModel.lastName)")
                }
            if showModif{
                TextField("Prénom",text: $newFirstName)
                TextField("Nom", text: $newLastName)
                Button("Enregistrer") {
                    profilModel.UpdateFirstName(to: newFirstName)
                    profilModel.UpdateLastName(to: newLastName)
                    newFirstName = ""
                    newLastName = ""
                }
                .buttonStyle(.borderedProminent)
                .padding()
            }
            
            Spacer()
     }
    }
}
