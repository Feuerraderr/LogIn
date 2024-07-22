//
//  TabBarViewController.swift
//  LogIn
//
//  Created by Владислав Резван on 16.07.2024.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tabBarAppearance = UITabBarAppearance()
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance
        
        tabBar.items?.last?.title = user.person.name
        
        transferData()
    }
    
    private func transferData() {
        guard let viewControllers else { return }
        
        viewControllers.forEach({
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = $0 as? NavigationViewController {
                navigationVC.user = user
            }
        })
    }

}
