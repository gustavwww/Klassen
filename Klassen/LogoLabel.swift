//
//  LogoLabel.swift
//  Klassen
//
//  Created by Gustav Wadström on 2017-01-16.
//  Copyright © 2017 Gustav Wadström. All rights reserved.
//

import UIKit

@IBDesignable
class LogoLabel: UILabel, Shadow {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        prepareLabel()
        
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        
        prepareLabel()
        
    }
    
    func prepareLabel() {
        
        putOffsetShadow(offset: CGSize(width: 1, height: 2))
        layer.shadowOpacity = 0.6
        
    }
    

}
