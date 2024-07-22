//
//  BioViewController.swift
//  LogIn
//
//  Created by Владислав Резван on 19.07.2024.
//

import UIKit

class BioViewController: UIViewController {

    @IBOutlet var bioLabel: UILabel!
    
    var biography: String!
    var name: String!
    var surname: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bioLabel.text = biography
    }
    
}
