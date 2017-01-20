//
//  Shake.swift
//  Klassen
//
//  Created by Gustav Wadström on 2017-01-20.
//  Copyright © 2017 Gustav Wadström. All rights reserved.
//

import UIKit

protocol Shake {}

extension Shake where Self: UIView {
    
    func shake() {
        
        func shake() {
            
            let anim = CABasicAnimation(keyPath: "position")
            anim.autoreverses = true
            anim.duration = 0.05
            anim.repeatCount = 5
            anim.fromValue = NSValue(cgPoint: CGPoint(x: center.x, y: center.y))
            anim.toValue = NSValue(cgPoint: CGPoint(x: center.x + 4, y: center.y))
            
            layer.add(anim, forKey: "position")
            
        }
        
        
    }
    
}
