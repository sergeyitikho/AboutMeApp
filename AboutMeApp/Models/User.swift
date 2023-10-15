//
//  User.swift
//  AboutMeApp
//
//  Created by John Doe on 11.10.2023.
//

import Foundation

struct User {
    let login: String
    let password: String
    let creator: Creator
    
    static func getUser() -> User {
        User(login: "User", password: "Password", creator: Creator.getCreator() )
    }
}

struct Creator {
    let name: String
    let age: Int
    let company: String
    let bio: String
    let gender: String
            
    static func getCreator() -> Creator {
        Creator(name: "John Doe", age: 66, company: "Limited Inc", bio: "Родился и уже хорошо.", gender: "male")
    }
}
