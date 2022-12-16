//
//  HobbyController.swift
//  LoginApp
//
//  Created by Alexey on 14.12.2022.
//

import UIKit

class HobbyController: UIViewController {
    
    @IBOutlet var hobbyImage: UIImageView!
    @IBOutlet var aboutMyHobby: UILabel!
    @IBOutlet var myHobbyLabel: UILabel!
    private let alexHobby = HobbyInfo.alexHobby()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Back")!)
        
        hobbyImage.image = UIImage(named: "snowBoard")
        myHobbyLabel.text = alexHobby.hobbyName
        aboutMyHobby.text = alexHobby.aboutHobbyText
    }
}
