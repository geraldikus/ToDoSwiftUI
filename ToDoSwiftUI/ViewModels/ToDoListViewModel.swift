//
//  ToDoListViewModel.swift
//  ToDoSwiftUI
//
//  Created by Anton on 21.07.23.
//

import Foundation
/// ViewModel for list of items view
/// Primary tab
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    init() {}
}
