//
//  NavigationViewController.swift
//  LogIn
//
//  Created by Владислав Резван on 19.07.2024.
//

import UIKit

class NavigationViewController: UINavigationController {
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        transferData()
    }
    
    private func transferData() {
        if let infoVC = topViewController as? InfoViewController {
            infoVC.user = user
        }
    }
}
