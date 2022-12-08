//
//  ViewController.swift
//  LoginApp
//
//  Created by Alexey on 03.12.2022.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - IBOtlets and properties
    @IBOutlet var userNameTextF: UITextField!
    @IBOutlet var passwordTextF: UITextField!
    
    private let userName = "User"
    private let password = "Password"
    
    // MARK: - override func
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let welcomeController = segue.destination as? WelcomeViewController {
            welcomeController.userNameWelcome = String("Welcome \(userNameTextF.text!)")
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
        if userNameTextF.text == userName, passwordTextF.text == password{
            performSegue(withIdentifier: "welcomeSegue", sender: nil)
        } else {
            alertLoginShow(
                title: "Авторизация невозможна",
                message: "Неверно введен логин или пароль")
        }
        passwordTextF.text = ""
    }
    
    @IBAction func forgotUserNameButton() {
        alertLoginShow(title: "Логин", message: userName)
    }
    
    @IBAction func forgotPassButton() {
        alertLoginShow(title: "Пароль", message: password)
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
