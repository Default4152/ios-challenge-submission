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
        
        viewControllers = [
            UIViewController(), UIViewController(), UIViewController()
        ]
    }
}
