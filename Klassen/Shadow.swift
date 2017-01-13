//
//  Shadow.swift
//  Klassen
//
//  Created by Gustav Wadström on 2017-01-14.
//  Copyright © 2017 Gustav Wadström. All rights reserved.
//

import UIKit

protocol Shadow {}

extension Shadow where Self: UIView {
    
    func putRadiusShadow(radius: CGFloat) {
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.8
        layer.shadowRadius = radius
        
    }
    
}
