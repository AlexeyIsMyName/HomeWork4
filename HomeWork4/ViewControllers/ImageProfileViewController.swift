//
//  ImageProfileViewController.swift
//  HomeWork4
//
//  Created by ALEKSEY SUSLOV on 07.02.2021.
//

import UIKit

class ImageProfileViewController: UIViewController {

    @IBOutlet var imageProfileImageView: UIImageView!
    
    var personImage: PersonImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let personImageChecked = personImage {
            imageProfileImageView.image = personImageChecked.image
        } else {
            imageProfileImageView.image = UIImage(systemName: "person.circle")
        }
    }
}
