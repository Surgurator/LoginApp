//
//  ViewController.swift
//  LoginApp
//
//  Created by Alexey on 03.12.2022.
//

import UIKit

final class ViewController: UIViewController {
    // MARK: - IBOtlets and properties
    @IBOutlet var userNameTextF: UITextField!
    @IBOutlet var passwordTextF: UITextField!
    
    private let User = UserData()

    
    // MARK: - override func
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        for viewController in viewControllers {
            if let welcomeController = viewController as? WelcomeViewController {
                welcomeController.userNameWelcome = String("Welcome \(User.name)")
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
 
        if userNameTextF.text == User.userLogin, passwordTextF.text == User.password{
            performSegue(withIdentifier: "welcomeSegue", sender: nil)
        } else {
            alertLoginShow(
                title: "Авторизация невозможна",
                message: "Неверно введен логин или пароль")
        }
        passwordTextF.text = ""
    }
    
    @IBAction func forgotUserNameButton() {
        alertLoginShow(title: "Логин", message: User.userLogin)
    }
    
    @IBAction func forgotPassButton() {
        alertLoginShow(title: "Пароль", message: User.password)
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
