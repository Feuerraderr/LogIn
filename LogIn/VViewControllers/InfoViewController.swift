//
//  BioViewController.swift
//  LogIn
//
//  Created by Владислав Резван on 16.07.2024.
//

import UIKit

final class InfoViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var companyLabel: UILabel!
    @IBOutlet var jobTittleLabel: UILabel!
    @IBOutlet var userPhotoIV: UIImageView! {
        didSet {
            userPhotoIV.layer.cornerRadius = userPhotoIV.frame.height / 2
        }
    }
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        companyLabel.text = user.person.company
        jobTittleLabel.text = user.person.jobTittle
        
        title = user.person.fullName
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let bioVC = segue.destination as? BioViewController
        bioVC?.user = user
    }
}


