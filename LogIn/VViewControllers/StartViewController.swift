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
    
    private let user = User.getUser()
    
    private var userLogin: String {
        user.login
    }
    
    private var userPassword: String {
        user.password
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarVC = segue.destination as? TabBarViewController
        
        tabBarVC?.viewControllers?.forEach({ viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.userLogin = user.login
                welcomeVC.userName = user.userInfo.name
                welcomeVC.userSurname = user.userInfo.surname
            } else if let navigationBarVC = viewController as? NavigationViewController {
                navigationBarVC.title = "\(user.userInfo.name)"
                
                let infoVC = navigationBarVC.topViewController as? InfoViewController
                infoVC?.name = user.userInfo.name
                infoVC?.surname = user.userInfo.surname
                infoVC?.company = user.userInfo.company
                infoVC?.jobTittle = user.userInfo.jobTittle
                infoVC?.biography = user.userInfo.biography
                
                infoVC?.navigationItem.title = "\(user.userInfo.name) \(user.userInfo.surname)"
            }
        })
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTF.text == userLogin, passwordTF.text == userPassword else {
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
        ? showAlert(withTittle: "Oops!", andMessage: "Your name is \(userLogin) 😉")
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

