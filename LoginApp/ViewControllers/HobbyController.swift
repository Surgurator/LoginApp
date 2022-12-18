//
//  HobbyController.swift
//  LoginApp
//
//  Created by Alexey on 14.12.2022.
//

import UIKit

final class HobbyController: UIViewController {
    
    @IBOutlet var hobbyImage: UIImageView!
    @IBOutlet var aboutMyHobby: UILabel!
    @IBOutlet var myHobbyLabel: UILabel!
    
    var  userHobby: UserData!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard  case view.backgroundColor = UIColor(patternImage: UIImage(named: "Back") ?? UIImage()) else { return }
        hobbyImage.image = UIImage(named: "snowBoard")
        myHobbyLabel.text = userHobby.person.hobby.hobbyName
        aboutMyHobby.text = userHobby.person.hobby.aboutHobbyText
    }
}
