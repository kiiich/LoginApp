//
//  ViewController.swift
//  LoginApp
//
//  Created by Николай on 25.08.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    private let userName = "Nick"
    private let password = "123"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func logInTapped() {
        if userNameTF.text != userName || passwordTF.text != password {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                clearPassword: true)
            return
        }
    }
    
    @IBAction func forgotUserNameTapped() {
        showAlert(title: "Ooops!", message: "Your name is \(userName) 🎃")
    }
    
    @IBAction func forgotPasswordTapped() {
        showAlert(title: "Ooops!", message: "Your password is \(password) 😈")
    }
    
    private func showAlert(title: String, message: String, clearPassword: Bool = false) {
        
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert)
        
        let okAction = UIAlertAction(
            title: "OK",
            style: .default) { _ in
                if clearPassword {
                    self.passwordTF.text = ""
                }
            }
        
        alert.addAction(okAction)
        present(alert, animated: true)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.description as? WelcomeViewController else { return }
        
        welcomeVC.userName = userName
        
    }

}

