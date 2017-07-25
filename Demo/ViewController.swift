//
//  ViewController.swift
//  Demo
//
//  Created by John Lima on 25/07/17.
//  Copyright © 2017 limadeveloper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Properties
    fileprivate var r2Button = UIBarButtonItem()
    
    // MARK: - View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        if UIDeviceOrientationIsLandscape(UIDevice.current.orientation) {
            updateUI(buttonSize: CGSize(width: 25, height: 25))
        }else {
            updateUI()
        }
    }
    
    // MARK: - Actions
    fileprivate func updateUI(buttonSize: CGSize? = nil) {
        
        r2Button = UIBarButtonItem.custom(
            with: #imageLiteral(resourceName: "R2-D2"),
            target: self,
            action: #selector(showDetails(sender:)),
            controlEvents: .touchUpInside
        )
        
        if let size = buttonSize {
            r2Button = UIBarButtonItem.custom(
                with: #imageLiteral(resourceName: "R2-D2"),
                frame: CGRect(x: 0, y: 0, width: size.width, height: size.height),
                target: self,
                action: #selector(showDetails(sender:)),
                controlEvents: .touchUpInside
            )
        }
        
        navigationItem.title = "Jedi"
        navigationItem.rightBarButtonItem = r2Button
    }
    
    @objc fileprivate func showDetails(sender: UIBarButtonItem) {
        
        let alert = UIAlertController(title: "R2 D2", message: "May the force be with you", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
}
