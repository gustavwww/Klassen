//
//  TextField.swift
//  Klassen
//
//  Created by Gustav Wadström on 2017-01-16.
//  Copyright © 2017 Gustav Wadström. All rights reserved.
//

import UIKit

@IBDesignable
class TextField: UITextField {

    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        prepareField()
        
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        
        prepareField()
        
    }
    
    func prepareField() {
        
        frame.size.height = 45
        
        attributedPlaceholder = NSAttributedString(string: placeholder!, attributes: [NSForegroundColorAttributeName: UIColor.white])
        layer.borderWidth = 2
        layer.borderColor = UIColor.white.cgColor
        layer.cornerRadius = bounds.height / 2
        
    }
    
    

}
