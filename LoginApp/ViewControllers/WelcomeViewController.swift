//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Alexey on 04.12.2022.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var userWelcome: UILabel!
    @IBOutlet var imageView: UIImageView!
    

    var userNameWelcome: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userWelcome.text = userNameWelcome
       view.backgroundColor = UIColor(patternImage: UIImage(named: "Back") ?? UIImage())
    }
}
