//
//  LoginViewViewModel.swift
//  ToDoListFB
//
//  Created by 이용수 on 2023/07/18.
//
import FirebaseAuth
import Foundation

class LoginViewViewModel : ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init(){}
    
    func login(){
        guard validate() else {
            return
        }
        // Try to Login
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    private func validate() -> Bool {
        errorMessage = ""
        
        // Get rid of the void
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            
            errorMessage = "Fill in the all fields"
            
            return false
        }
        
        // Check the email form
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter the valid email"
            return false
        }
        return true
    }
    
}
