//
//  LogoView.swift
//  Klassen
//
//  Created by Gustav Wadström on 2017-01-16.
//  Copyright © 2017 Gustav Wadström. All rights reserved.
//

import UIKit

@IBDesignable
class LogoView: UIView, Shadow {

    
    @IBInspectable var offset: CGSize = CGSize.zero {
        
        
        didSet {
            
            putOffsetShadow(offset: offset)
            
        }
        
        
    }
    

}
