//
//  ItemViewModel.swift
//  ToDoSwiftUI
//
//  Created by Anton on 21.07.23.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

/// ViewModel for single to do list item view (each row items list)
/// Primary tab
class ToDoListItemViewViewModel: ObservableObject {
    init() {}
    
    func toggleIsDone(item: ToDoListItem) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}
