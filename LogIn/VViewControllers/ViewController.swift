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

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTF.text == userName, passwordTF.text == userPassword else {
            showAlert(
                withTittle: "Invalid login or password",
                andMessage: "Please, enter correct login and password") {
                    self.passwordTF.text = ""
                }
            return false
        }
        return true
    }
    
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0 
        ? showAlert(withTittle: "Oops!", andMessage: "Your name is \(userName) 😉")
        : showAlert(withTittle: "Oops!", andMessage: "Your password is \(userPassword) 😉")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    private func showAlert(withTittle tittle: String, andMessage message: String, completion: (() -> Void)? = nil) {
        let alert = UIAlertController(title: tittle, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            completion?()
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

