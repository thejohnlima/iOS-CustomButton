//
//  Extensions.swift
//  Demo
//
//  Created by John Lima on 25/07/17.
//  Copyright © 2017 limadeveloper. All rights reserved.
//

import UIKit
import Foundation

extension UIBarButtonItem {
    
    static func custom(with image: UIImage, frame: CGRect = CGRect(x: 0, y: 0, width: 36, height: 36), isRounded: Bool = true, borderWidth: CGFloat = 0, borderColor: UIColor = .white, target: AnyObject?, action: Selector, controlEvents: UIControlEvents = .touchUpInside, showsTouchWhenHighlighted: Bool = true) -> UIBarButtonItem {
        
        let button = UIButton(frame: frame)
        button.setBackgroundImage(image, for: .normal)
        button.showsTouchWhenHighlighted = showsTouchWhenHighlighted
        button.addTarget(target, action: action, for: controlEvents)
        
        if isRounded {
            button.layer.cornerRadius = frame.size.height / 2
        }
        
        button.layer.borderWidth = borderWidth
        button.layer.borderColor = borderColor.cgColor
        button.layer.masksToBounds = button.layer.cornerRadius > 0
        
        let buttonItem = UIBarButtonItem(customView: button)
        
        return buttonItem
    }
}

extension UIImageView {
    
    func blur(style: UIBlurEffectStyle = .light) {
        
        let effect = UIBlurEffect(style: style)
        let effectView = UIVisualEffectView(effect: effect)
        
        effectView.frame = self.bounds
        effectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        addSubview(effectView)
    }
}
