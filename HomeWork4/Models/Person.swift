//
//  PersonalInfo.swift
//  HomeWork4
//
//  Created by ALEKSEY SUSLOV on 07.02.2021.
//

struct Person {
    let name: String
    let surname: String
    
    let image: PersonImage?
    
    let personalDetail: PersonalDetail
}

extension Person {
    static func getSamplePerson() -> Person {
        Person(name: "Donald",
               surname: "Trump",
               image: PersonImage.getSampleImage(),
               personalDetail: PersonalDetail.getSamplePersonalDetail())
    }
}
