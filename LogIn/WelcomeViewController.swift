//
//  WelcomeViewController.swift
//  LogIn
//
//  Created by Владислав Резван on 09.07.2024.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcome, \(userName ?? "")!"
    }
    
    
}
