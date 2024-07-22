//
//  WelcomeViewController.swift
//  LogIn
//
//  Created by Владислав Резван on 09.07.2024.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var userLogin: String!
    var userName: String!
    var userSurname: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcome, \(userLogin ?? "")!\n My name is \(userName ?? "") \(userSurname ?? "")."
    }
    
    
}
