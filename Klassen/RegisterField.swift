//
//  RegisterField.swift
//  Klassen
//
//  Created by Gustav Wadström on 2017-01-21.
//  Copyright © 2017 Gustav Wadström. All rights reserved.
//

import UIKit

class RegisterField: UITextField {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        prepareField()
        
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        
        prepareField()
        
    }
    
    func prepareField() {
        
        frame.size.height = 40
        
    }

}
