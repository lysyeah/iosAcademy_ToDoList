//
//  extensions.swift
//  ToDoListFB
//
//  Created by 이용수 on 2023/07/24.
//

import Foundation

extension Encodable {
    func asDictionary() -> [String: Any] {
        guard let data = try? JSONEncoder () .encode (self) else{
            return [:]
        }
        do{
            let json = try JSONSerialization.jsonObject(with: data) as? [String :Any]
            return json ?? [:]
        }catch {
            return [:]
        }
    }
    
}
