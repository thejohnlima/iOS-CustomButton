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
    @IBOutlet fileprivate weak var toolBar: UIToolbar!
    
    fileprivate var r2Button = UIBarButtonItem()
    fileprivate var logoButton = UIBarButtonItem()
    
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
            action: #selector(showDetails(sender:))
        )
        
        logoButton = UIBarButtonItem.custom(
            with: #imageLiteral(resourceName: "StarWars"),
            frame: CGRect(x: 0, y: 0, width: 54, height: 54),
            target: self,
            action: #selector(showDetails(sender:))
        )
        
        if let size = buttonSize {
            r2Button = UIBarButtonItem.custom(
                with: #imageLiteral(resourceName: "R2-D2"),
                frame: CGRect(x: 0, y: 0, width: size.width, height: size.height),
                target: self,
                action: #selector(showDetails(sender:))
            )
        }
        
        navigationItem.title = "Yoda"
        navigationItem.rightBarButtonItem = r2Button
        
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        
        toolBar.setItems([flexibleSpace, logoButton, flexibleSpace], animated: true)
        toolBar.barStyle = .black
    }
    
    @objc fileprivate func showDetails(sender: UIBarButtonItem) {
        
        let alert = UIAlertController(title: "Jedi", message: "May the force be with you", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
}
