//
//  CustomView.swift
//  Demo
//
//  Created by John Lima on 25/07/17.
//  Copyright © 2017 limadeveloper. All rights reserved.
//

import UIKit

class CustomView: UIView {

    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        let imageView = UIImageView(frame: self.bounds)
        imageView.image = #imageLiteral(resourceName: "Yoda")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        insertSubview(imageView, at: 0)
    }
}
