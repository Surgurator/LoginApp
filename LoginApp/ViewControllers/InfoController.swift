//
//  InfoController.swift
//  LoginApp
//
//  Created by Alexey on 14.12.2022.
//

import UIKit

final class InfoController: UIViewController {
    
    @IBOutlet var employment: UILabel!
    @IBOutlet var workSchedule: UILabel!
    @IBOutlet var desiredSalary: UILabel!
    @IBOutlet var workExperience: UILabel!
    
    @IBOutlet var photo: UIImageView!
    
    var userInfo: UserData!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = userInfo.person.name
        employment.text = userInfo.person.emplyment
        workSchedule.text = userInfo.person.workSchedule
        desiredSalary.text = userInfo.person.desiredSalary
        desiredSalary.text = userInfo.person.workExperience
     view.backgroundColor = UIColor(patternImage: UIImage(named: "Back")!) 
        photo.image = UIImage(named: "photo")
    }
}

