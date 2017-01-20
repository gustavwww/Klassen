//
//  ViewController.swift
//  Klassen
//
//  Created by Gustav Wadström on 2017-01-13.
//  Copyright © 2017 Gustav Wadström. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth


class LoginVC: UIViewController {

    
    @IBOutlet weak var loginBtn: MainButton!
    @IBOutlet weak var emailField: TextField!
    @IBOutlet weak var passField: TextField!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var loginLbl: UILabel!
    
    var user: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        activityIndicator.isHidden = true
        loginLbl.isHidden = true
        
        
        
    }
    
    func startActivityIndicator() { //Start Activity
        
        if activityIndicator.isAnimating {
            
            return
        }
        activityIndicator.isHidden = false
        activityIndicator.startAnimating()
        
    }
    
    func stopActivityIndicator() { //Stop Activity
        
        if !activityIndicator.isAnimating {
            
            return
        }
        activityIndicator.isHidden = true
        activityIndicator.stopAnimating()
        
    }
    
    
    @IBAction func LoginPressed(_ sender: MainButton) {
        
        if let email = emailField.text, let pass = passField.text {
            
            startActivityIndicator()
            loginLbl.text = "Letar efter konto..."
            loginLbl.isHidden = false
            
            FIRAuth.auth()?.signIn(withEmail: email, password: pass, completion: { (user, error) in
                
                if error != nil {
                    //Error while signing in
                    
                    self.loginBtn.shake()
                    
                    self.stopActivityIndicator()
                    self.loginLbl.isHidden = true
                    
                    return
                }
                self.loginLbl.text = "Loggar in..."
                
                self.user = User(user: user!)
                
                
            })
            
            
            return
        }
        
    }
    
    
    @IBAction func facebookBtnPressed(_ sender: RoundBtn) {
        
        
        
    }
    

}

