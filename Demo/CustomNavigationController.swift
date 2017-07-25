//
//  CustomNavigationController.swift
//  Demo
//
//  Created by John Lima on 25/07/17.
//  Copyright © 2017 limadeveloper. All rights reserved.
//

import UIKit

class CustomNavigationController: UINavigationController {

    // MARK: - View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationBar.barStyle = .black
        navigationBar.tintColor = .white
        navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
    }
}
