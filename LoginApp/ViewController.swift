//
//  ViewController.swift
//  LoginApp
//
//  Created by Alexey on 03.12.2022.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - IBOtlets
    @IBOutlet var userNameTextF: UITextField!
    @IBOutlet var passwordTextF: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let welcomeController = segue.destination as? WelcomeViewController {
            welcomeController.userNameWelcome = String("Welcome \(userNameTextF.text!)")
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    // MARK: - IBActions
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let logOut = segue.destination as? ViewController else {return}
        logOut.userNameTextF.text = ""
        logOut.passwordTextF.text = ""
    }
    
    @IBAction func logInButton(_ sender: UIButton) {
        if userNameTextF.text == "User", passwordTextF.text == "Password"{
            performSegue(withIdentifier: "welcomeSegue", sender: nil)
        } else {
            alertLoginPass()
            }
            passwordTextF.text = ""
        }
    
    
    @IBAction func forgotUserNameButton() {
        alertLoginShow()
    }
    
    @IBAction func forgotPassButton() {

        alertPassShow()
    }
    func alertLoginPass(){
        let alert = UIAlertController(
            title: "Авторизация невозможна",
            message: "Неверно введен логин или пароль",
            preferredStyle: .alert)
        let buttonOK = UIAlertAction(title: "OK", style: .default)
        alert.addAction(buttonOK)
        present(alert, animated: true)
    }
 
func alertLoginShow(){
    let showLogin = UIAlertController(
        title: "Логин",
        message: "User",
        preferredStyle: .alert)
    let buttonOK = UIAlertAction(title: "OK", style: .default)
    showLogin.addAction(buttonOK)
    present(showLogin, animated: true)
}

    func alertPassShow(){
        let showPass = UIAlertController(
            title: "Пароль",
            message: "Password",
            preferredStyle: .alert)
        let buttonOK = UIAlertAction(title: "OK", style: .default)
        showPass.addAction(buttonOK)
        present(showPass, animated: true)
    }

}
