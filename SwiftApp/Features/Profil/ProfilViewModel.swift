//
//  ProfilSwiftViewModel.swift
//  SwiftApp
//
//  Created by CHICHE Raphaël on 03/11/2025.
//
import SwiftUI

@Observable
class ProfilViewModel {
    var firstName : String = "Prénom";
    var lastName : String = "Nom";
    
    func UpdateFirstName(to newFirstName: String) {
        firstName = newFirstName
    }
    
    func UpdateLastName(to newLastName: String) {
        lastName = newLastName
    }
    
}

