//
//  User.swift
//  LogIn
//
//  Created by Владислав Резван on 16.07.2024.
//

import Foundation

struct User {
    let login: String
    let password: String
    let userInfo: Person
    
    static func getUser() -> User {
        User(
            login: "User",
            password: "Password",
            userInfo: Person(
                name: "Владислав",
                surname: "Белов",
                company: "Нет",
                jobTittle: "Врач",
                biography: "Биография"
            )
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let company: String
    let jobTittle: String
    let biography: String
}
