//
//  LoggedSegue.swift
//  Klassen
//
//  Created by Gustav Wadström on 2017-01-22.
//  Copyright © 2017 Gustav Wadström. All rights reserved.
//

import UIKit

class LoggedSegue: UIStoryboardSegue {
    
    
    override func perform() {
        
        let sourceView = self.source.view!
        let destinationView = self.destination.view!
        
        let screenHeight = UIScreen.main.bounds.size.height
        let screenWidht = UIScreen.main.bounds.size.width
        
        destinationView.center = CGPoint(x: screenWidht + (screenWidht / 2), y: screenHeight / 2)
        
        //Set view on actual window
        let window = UIApplication.shared.keyWindow!
        
        window.insertSubview(destinationView, aboveSubview: sourceView)
        
        UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseIn, animations: {
            
            destinationView.center = CGPoint(x: screenWidht / 2, y: screenHeight / 2)
            sourceView.center = CGPoint(x: 0, y: screenHeight / 2)
            
        }) { (complete) in
            
            _ = self.source.navigationController?.popViewController(animated: false)
            
            
        }
        
    }
    
    
    
}
