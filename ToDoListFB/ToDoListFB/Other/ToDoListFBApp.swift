//
//  ToDoListFBApp.swift
//  ToDoListFB
//
//  Created by 이용수 on 2023/07/17.
//
import FirebaseCore
import SwiftUI

@main
struct ToDoListFBApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
