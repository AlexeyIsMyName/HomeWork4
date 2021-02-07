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
    
    func getDetail(of type: DetailType) -> String? {
        switch type {
        case .born: return details[.born]
        case .wife: return details[.wife]
        case .children: return details[.children]
        case .parents: return details[.parents]
        case .occupation: return details[.occupation]
        case .work: return details[.work]
        case .webSite: return details[.webSite]
        }
    }
}

extension PersonalDetail {
    static func getSamplePersonalDetail() -> PersonalDetail {
        PersonalDetail(details: [
            .born: "June 14, 1946, Queens, New York City",
            .wife: "Melania Knauss",
            .children: "Donald Jr., Ivanka, Eric, Tiffany, Barron",
            .parents: "Fred Trump, Mary Anne MacLeod",
            .occupation: "Politician, businessman, television presenter, author",
            .work: "45th President of the United States",
            .webSite: "trumpwhitehouse.archives.gov"
        ])
    }
}
