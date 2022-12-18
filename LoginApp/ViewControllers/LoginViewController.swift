//
//  ViewController.swift
//  LoginApp
//
//  Created by Alexey on 03.12.2022.
//

import UIKit

final class LoginViewController: UIViewController {
    // MARK: - IBOtlets and properties
    @IBOutlet var userNameTextF: UITextField!
    @IBOutlet var passwordTextF: UITextField!
    
    private var user = UserData.alexPerson()
    
    
    // MARK: - override func
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        
        for viewController in viewControllers {
            if let welcomeController = viewController as? WelcomeViewController {
                welcomeController.userNameWelcome = String("Welcome \(user.userLogin)")
            } else if let infoController = viewController as? InfoController{
                infoController.userInfo = user
            } else if let hobbyController = viewController as? HobbyController {
                hobbyController.userHobby = user
            }
        }
    }
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            super.touchesBegan(touches, with: event)
            view.endEditing(true)
        }
        
        // MARK: - IBActions
        
        @IBAction func unwind(for segue: UIStoryboardSegue) {
            userNameTextF.text = ""
            passwordTextF.text = ""
        }
        
        @IBAction func logInButton(_ sender: UIButton) {
            
            if userNameTextF.text == user.userLogin, passwordTextF.text == user.password{
                performSegue(withIdentifier: "welcomeSegue", sender: nil)
            } else {
                alertLoginShow(
                    title: "Авторизация невозможна",
                    message: "Неверно введен логин или пароль")
            }
            passwordTextF.text = ""
        }
        
        @IBAction func forgotUserNameButton() {
            alertLoginShow(title: "Логин", message: user.userLogin)
        }
        
        @IBAction func forgotPassButton() {
            alertLoginShow(title: "Пароль", message: user.password)
        }
        
        private func alertLoginShow(title: String, message: String){
            let showLogin = UIAlertController(
                title: title,
                message: message,
                preferredStyle: .alert)
            let buttonOK = UIAlertAction(title: "OK", style: .default)
            showLogin.addAction(buttonOK)
            present(showLogin, animated: true)
        }
    }

//            } else if let infoController = viewController as? InfoController {
//                infoController.title = user.person.name
//                infoController.employment.text = user.person.emplyment
//                infoController.workSchedule.text = user.person.workSchedule
//                infoController.desiredSalary.text = user.person.desiredSalary
//                infoController.desiredSalary.text = user.person.workExperience
//            } else if let hobbyController = viewController as? HobbyController {
//                hobbyController.myHobbyLabel.text = user.person.hobby.hobbyName
//                hobbyController.aboutMyHobby.text = user.person.hobby.aboutHobbyText
//            }
