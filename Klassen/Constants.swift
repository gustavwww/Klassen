//
//  Constants.swift
//  Klassen
//
//  Created by Gustav Wadström on 2017-01-20.
//  Copyright © 2017 Gustav Wadström. All rights reserved.
//

import Foundation
import Firebase
import FirebaseDatabase

class Constants {
    
    static let shared = Constants()
    
    let FBRef = FIRDatabase.database().reference()
    let FBRef_USERS = FIRDatabase.database().reference().child("users")
    
}
