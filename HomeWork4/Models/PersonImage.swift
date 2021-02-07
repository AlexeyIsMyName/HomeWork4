//
//  PersonImage.swift
//  HomeWork4
//
//  Created by ALEKSEY SUSLOV on 07.02.2021.
//

import UIKit

struct PersonImage {
    let image: UIImage?
}

extension PersonImage {
    static func getSampleImage() -> PersonImage? {
        PersonImage(image: UIImage(named: "imageDonaldTrump.jpeg"))
    }
}
