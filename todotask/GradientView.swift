//
//  GradientView.swift
//  todotask
//
//  Created by Maze Geek on 5/6/19.
//  Copyright © 2019 Amit Biswas. All rights reserved.
//
//  GradientView.swift
//  Onchat
//
//  Created by Maze Geek on 4/17/19.
//  Copyright © 2019 Amit Biswas. All rights reserved.
//
import UIKit
@IBDesignable
class GradientView: UIView {
    
    // Declairing  @IBInspectable variable for changing story board dynamicly (color)
    
    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.2901960784, green: 0.3019607843, blue: 0.8470588235, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.1725490196, green: 0.831372549, blue: 0.8470588235, alpha: 1){
        didSet {
            self.setNeedsLayout()
        }
    }
    // This function will call after updated the UIcolor/View
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()    // Core Animation
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint   = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
        
    }
}

