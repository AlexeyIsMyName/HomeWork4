//
//  Profile.swift
//  HomeWork4
//
//  Created by ALEKSEY SUSLOV on 07.02.2021.
//

struct Profile {
    let login: String
    let password: String
    
    let person: Person
}

extension Profile {
    static func getSampleProfile() -> Profile {
        Profile(login: "Donald",
                password: "MAGA2020",
                person: Person.getSamplePerson())
    }
}
