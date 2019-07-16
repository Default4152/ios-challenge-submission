//
//  BaseTabBarController.swift
//  Tocca-Challenge
//
//  Created by Conner on 7/15/19.
//  Copyright © 2019 Conner. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.barTintColor = #colorLiteral(red: 0.9999126792, green: 1, blue: 0.9998814464, alpha: 1)
        tabBar.tintColor = #colorLiteral(red: 0.1507650614, green: 0.3526057601, blue: 0.8449645638, alpha: 1)
        tabBar.isTranslucent = false
        
        let contactsVC = ContactsViewController()
        contactsVC.tabBarItem.image = UIImage(named: "contacts_icon")
        contactsVC.tabBarItem.title = "Contacts"
        
        let cardVC = CardViewController()
        cardVC.tabBarItem.image = UIImage(named: "my_card_icon")
        cardVC.tabBarItem.title = "My Card"
        
        let settingsVC = SettingsViewController()
        settingsVC.tabBarItem.image = UIImage(named: "settings_icon")
        settingsVC.tabBarItem.title = "Settings"
        
        viewControllers = [cardVC, contactsVC, settingsVC]
    }
}
