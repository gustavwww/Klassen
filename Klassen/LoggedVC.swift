//
//  LoggedVC.swift
//  Klassen
//
//  Created by Gustav Wadström on 2017-01-21.
//  Copyright © 2017 Gustav Wadström. All rights reserved.
//

import UIKit

class LoggedVC: UIViewController {

    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("LoggedVC View Loaded")
        
    }
    
    @IBAction func menuPressed(_ sender: UIButton) {
        
        print("Button event Fired")
        performSegue(withIdentifier: "toMenu", sender: nil)
        
    }

}
