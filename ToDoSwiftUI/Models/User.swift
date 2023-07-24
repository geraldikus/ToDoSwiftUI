//
//  User.swift
//  ToDoSwiftUI
//
//  Created by Anton on 21.07.23.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
