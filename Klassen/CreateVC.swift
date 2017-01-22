 //
//  CreateVC.swift
//  Klassen
//
//  Created by Gustav Wadström on 2017-01-21.
//  Copyright © 2017 Gustav Wadström. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
 
class CreateVC: UIViewController {

    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var checkEmailField: UITextField!
    
    @IBOutlet weak var passField: UITextField!
    @IBOutlet weak var checkPassField: UITextField!
    
    @IBOutlet weak var userName: RegisterField!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    var user: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        activityIndicator.isHidden = true
        
    }
    
    @IBAction func registerPressed(_ sender: MainButton) {
        
        if fieldsIsCorrect() {
            activityIndicator.isHidden = false
            activityIndicator.startAnimating()
            
            FIRAuth.auth()?.createUser(withEmail: emailField.text!, password: passField.text!, completion: { (user, error) in
                
                if let error = error {
                    //Error creating account.
                    print(error.localizedDescription)
                    
                    return
                }
                
                self.user = User(user: user!)
                self.user?.uploadDefaultDetails(fullName: self.userName.text!.capitalized, isOnline: true)
                self.user?.setObserve()
                
                self.performSegue(withIdentifier: "toLogged", sender: self.user)
                
                self.activityIndicator.isHidden = true
                self.activityIndicator.stopAnimating()
            })
            
            
        } else {
            
            sender.shake()
        }
        
        
    }
    
    func fieldsIsCorrect() -> Bool {
        
        if emailField.text == nil {
            //Field not entered
            
            return false
            
        } else if checkEmailField.text != emailField.text {
                //Email do not match
                
                
                return false
            
        } else if !(emailField.text?.contains("@"))! {
                //Invalid Email
                
            
            return false
        }
        //Email success!
        
        
        //Password
        if passField.text == nil {
            //Field not filled
            
            return false
            
        } else if checkPassField.text != passField.text {
            //Password do not match
            
            return false
            
        } else if (passField.text?.characters.count)! < 6 {
            //Password is to short.
            
            
            return false
        }
        //Password success!
        
        
        //Name
        if userName.text == nil {
            //Not Filled
            
            return false
            
        } else if !(userName.text?.contains(" "))! {
            //Invalid Fullname
            
            return false
        }
        //Everything success!
        
        
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? LoggedVC {
            
            if let user = sender as? User {
                destination.user = user
            }
            
        }
        
        
    }
    
    
    @IBAction func backPressed(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
    }

}
