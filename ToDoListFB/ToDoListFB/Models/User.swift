//
//  User.swift
//  ToDoListFB
//
//  Created by 이용수 on 2023/07/18.
//

import Foundation

struct User : Codable {
    let id : String
    let name : String
    let email : String
    let joined : TimeInterval
}
