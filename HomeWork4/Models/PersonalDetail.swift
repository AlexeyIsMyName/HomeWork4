//
//  PersonalDetail.swift
//  HomeWork4
//
//  Created by ALEKSEY SUSLOV on 07.02.2021.
//

struct PersonalDetail {
    enum DetailType: String {
        case born = "Born"
        case wife = "Wife"
        case children = "Children"
        case parents = "Parents"
        case occupation = "Occupation"
        case work = "Work"
        case webSite = "Web Site"
    }
    
    let details: [DetailType: String]
}

extension PersonalDetail {
    static func getSamplePersonalDetail() -> PersonalDetail {
        PersonalDetail(details: [
            .born: "01",
            .wife: "02",
            .children: "03",
            .parents: "04",
            .occupation: "05",
            .work: "06",
            .webSite: "07"
        ])
    }
}
