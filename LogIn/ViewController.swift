//
//  ViewController.swift
//  LogIn
//
//  Created by Владислав Резван on 09.07.2024.
//

import UIKit

final class StartViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let userName = "User"
    private let userPassword = "Password"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let userInfo = segue.destination as? WelcomeViewController
        userInfo?.userName = userNameTF.text
    }

    
    
    @IBAction func logIn() {
        if userNameTF.text != userName || passwordTF.text != userPassword {
            showEntryAlert(
                withTittle: "Invalid login or password",
                andMessage: "Please, enter correct login and password"
            )
        }
    }
    
    @IBAction func forgotUserName() {
        showForgotAlert(
            withTittle: "Oops!",
            andMessage: "Your name is \(userName) 😉"
        )
    }
    
    @IBAction func forgotPassword() {
        showForgotAlert(
            withTittle: "Oops!",
            andMessage: "Your password is \(userPassword) 😉"
        )
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    private func showForgotAlert(
        withTittle tittle: String,
        andMessage message: String
    ) {
        let alert = UIAlertController(
            title: tittle,
            message: message,
            preferredStyle: .alert
        )
        
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }
    
    private func showEntryAlert(
        withTittle tittle: String,
        andMessage message: String
    ) {
        let alert = UIAlertController(
            title: tittle,
            message: message,
            preferredStyle: .alert
        )
        
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }
}

