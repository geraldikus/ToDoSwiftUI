//
//  ToDoSwiftUIApp.swift
//  ToDoSwiftUI
//
//  Created by Anton on 21.07.23.
//

import SwiftUI
import FirebaseCore

@main
struct ToDoSwiftUIApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
