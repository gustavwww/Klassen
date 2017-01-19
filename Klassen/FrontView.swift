//
//  FrontView.swift
//  Klassen
//
//  Created by Gustav Wadström on 2017-01-16.
//  Copyright © 2017 Gustav Wadström. All rights reserved.
//

import UIKit

@IBDesignable
class FrontView: UIView {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.backgroundColor = UIColor.black.withAlphaComponent(0.5).cgColor
        
    }

    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        
        layer.backgroundColor = UIColor.black.withAlphaComponent(0.5).cgColor
        
    }
    

}
