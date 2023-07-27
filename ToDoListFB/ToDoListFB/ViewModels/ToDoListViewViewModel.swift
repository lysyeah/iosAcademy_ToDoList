//
//  ToDoListViewViewModel.swift
//  ToDoListFB
//
//  Created by 이용수 on 2023/07/18.
//
import FirebaseFirestore
import Foundation

/// ViewModel for list of items view
/// Primary Tab
class ToDoListViewViewModel : ObservableObject {
    
    @Published var showingNewItemView = false
    
    private let userId : String
    
    init(userId: String) {
        self.userId = userId
    }
    
    /// delete to do list items
    /// - Parameter id : item id to do list
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
