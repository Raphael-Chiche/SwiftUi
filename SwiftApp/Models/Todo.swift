//
//  Models.swift
//  SwiftApp
//
//  Created by CHICHE Raphaël on 03/11/2025.
//

import SwiftUI

struct Todo : Codable, Identifiable {
    let id: Int
    let title: String
    let completed: Bool
}

