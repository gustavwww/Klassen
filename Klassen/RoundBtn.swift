//
//  RoundBtn.swift
//  Klassen
//
//  Created by Gustav Wadström on 2017-01-19.
//  Copyright © 2017 Gustav Wadström. All rights reserved.
//

import UIKit

@IBDesignable
class RoundBtn: UIButton, Shadow {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        prepareButton()
        
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        
        prepareButton()
        
    }
    
    func prepareButton() {
        
        layer.cornerRadius = bounds.width / 2
        putRadiusShadow(radius: 3)
        
    }

}
