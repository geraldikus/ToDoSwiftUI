//
//  ContentView.swift
//  ToDoSwiftUI
//
//  Created by Anton on 21.07.23.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            
            TabView {
                ToDoListView()
                    .tabItem {
                        Label("Home",
                              systemImage: "house")
                    }
                
                ToDoListView()
                    .tabItem {
                        Label("Profile",
                              systemImage: "person.circle")
                    }
            }
        } else {
            LoginView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
