//
//  WelcomeViewController.swift
//  LogIn
//
//  Created by Владислав Резван on 09.07.2024.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcome, \(user.login)!\n My name is \(user.person.fullName)."
    }
    
    
}
