//
//  MainButton.swift
//  Klassen
//
//  Created by Gustav Wadström on 2017-01-16.
//  Copyright © 2017 Gustav Wadström. All rights reserved.
//

import UIKit

@IBDesignable
class MainButton: UIButton, Shadow {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        prepareButton()
        
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        
        prepareButton()
        
    }
    
    
    func prepareButton() {
        
        layer.backgroundColor = UIColor.white.cgColor
        layer.cornerRadius = bounds.height / 2
        
        putOffsetShadow(offset: CGSize(width: 3, height: 4))
        
    }

}
