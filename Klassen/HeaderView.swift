//
//  HeaderView.swift
//  Klassen
//
//  Created by Gustav Wadström on 2017-01-14.
//  Copyright © 2017 Gustav Wadström. All rights reserved.
//

import UIKit

@IBDesignable
class HeaderView: UIView, Shadow {

    @IBInspectable var shadowRadius: CGFloat = 0 {
        
        didSet {
            
            putRadiusShadow(radius: shadowRadius)
            layer.shadowOffset = CGSize(width: 0, height: 3)
        }
        
    }
    

}
