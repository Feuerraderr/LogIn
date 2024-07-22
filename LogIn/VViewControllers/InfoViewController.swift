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
    @IBOutlet var userPhotoIV: UIImageView!
    
    var name: String!
    var surname: String!
    var company: String!
    var jobTittle: String!
    var biography: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
        surnameLabel.text = surname
        companyLabel.text = company
        jobTittleLabel.text = jobTittle
        userPhotoIV.layer.cornerRadius = userPhotoIV.frame.height / 2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let bioVC = segue.destination as? BioViewController
        bioVC?.biography = biography
        bioVC?.navigationItem.title = "\(name ?? "") \(surname ?? "") Bio"
    }
}


