//
//  User.swift
//  Klassen
//
//  Created by Gustav Wadström on 2017-01-20.
//  Copyright © 2017 Gustav Wadström. All rights reserved.
//

import Foundation
import Firebase
import FirebaseAuth
import FirebaseDatabase

class User {
    
    var FIRuser: FIRUser!
    
    init(user: FIRUser) {
        self.FIRuser = user
                
    }
    
    private var _fullName: String!
    private var _isOnline: Bool!
    
    var fullName: String {
        if _fullName == nil {
            _fullName = ""
        }
        
        return _fullName
    }
    
    var isOnline: Bool {
        if _isOnline == nil {
            _isOnline = false
        }
        
        return _isOnline
    }
    
    func uploadDefaultDetails(fullName: String, isOnline: Bool) {
        
        Constants.shared.FBRef_USERS.child(FIRuser.uid).setValue(["fullname": fullName, "isOnline": isOnline])
        
        
    }
    
    func setObserve() {
        
        Constants.shared.FBRef_USERS.child(FIRuser.uid).observe(.value, with: { (snapshot) in
            
            if let dict = snapshot.value as? Dictionary<String, AnyObject> {
                
                if let fullname = dict["fullname"] as? String {
                    
                    self._fullName = fullname
                }
                
                if let online = dict["isOnline"] as? Bool {
                    
                    self._isOnline = online
                }
                
                
            }
            
        })
        
        
    }
    
    func setStatus(isOnline: Bool) {
        
        Constants.shared.FBRef_USERS.child(FIRuser.uid).child("isOnline").setValue(isOnline)
        
    }
    
}
