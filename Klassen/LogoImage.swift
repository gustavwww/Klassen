//
//  LogoImage.swift
//  Klassen
//
//  Created by Gustav Wadström on 2017-01-19.
//  Copyright © 2017 Gustav Wadström. All rights reserved.
//

import UIKit

@IBDesignable
class LogoImage: UIImageView, Shadow {

    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        prepareImage()
        
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        
        prepareImage()
        
    }
    
    func prepareImage() {
        
        putOffsetShadow(offset: CGSize(width: 2, height: 2))
        
        
    }

}
