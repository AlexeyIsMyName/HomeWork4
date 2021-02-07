//
//  PersonalDetailsViewController.swift
//  HomeWork4
//
//  Created by ALEKSEY SUSLOV on 07.02.2021.
//

import UIKit

class PersonalDetailsViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surNameLabel: UILabel!
    @IBOutlet var bornInfoLabel: UILabel!
    @IBOutlet var fullNameOfWife: UILabel!
    @IBOutlet var childrenNamesLabel: UILabel!
    @IBOutlet var parentsNamesLabel: UILabel!
    @IBOutlet var occupationLabel: UILabel!
    @IBOutlet var workLabel: UILabel!
    @IBOutlet var webSiteLinkLabel: UILabel!
    
    var personName: String!
    var personSurname: String!
    var personalDetail: PersonalDetail!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = personName
        surNameLabel.text = personSurname
        
        bornInfoLabel.text = personalDetail.getDetail(of: .born)
        fullNameOfWife.text = personalDetail.getDetail(of: .wife)
        childrenNamesLabel.text = personalDetail.getDetail(of: .children)
        parentsNamesLabel.text = personalDetail.getDetail(of: .parents)
        occupationLabel.text = personalDetail.getDetail(of: .occupation)
        workLabel.text = personalDetail.getDetail(of: .work)
        webSiteLinkLabel.text = personalDetail.getDetail(of: .webSite)
    }
}
