//
//  BioViewController.swift
//  LogIn
//
//  Created by Владислав Резван on 19.07.2024.
//

import UIKit

class BioViewController: UIViewController {

    @IBOutlet var bioLabel: UILabel!
    
    var user: User!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bioLabel.text = user.person.biography
        title = "\(user.person.fullName)"
    }
    
}
