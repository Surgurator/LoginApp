//
//  InfoController.swift
//  LoginApp
//
//  Created by Alexey on 14.12.2022.
//

import UIKit

class InfoController: UIViewController {
    
    @IBOutlet var employment: UILabel!
    @IBOutlet var workSchedule: UILabel!
    @IBOutlet var desiredSalary: UILabel!
    @IBOutlet var workExperience: UILabel!
    
    @IBOutlet var photo: UIImageView!
    
    private let alex = UserData()
    private let alexPerson = PersonInfo.alexPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Back")!)
        photo.image = UIImage(named: "photo")
        self.navigationItem.title = alex.name
        
        employment.text = alexPerson.emplyment
        workSchedule.text = alexPerson.workSchedule
        desiredSalary.text = alexPerson.desiredSalary
        workExperience.text = alexPerson.workExperience
    }
}

