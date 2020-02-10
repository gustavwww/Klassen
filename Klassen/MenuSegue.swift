//
//  MenuSegue.swift
//  Klassen
//
//  Created by Gustav Wadström on 2017-02-01.
//  Copyright © 2017 Gustav Wadström. All rights reserved.
//

import UIKit

class MenuSegue: UIStoryboardSegue {

    
    
    override func perform() {
        
        print("Menu Segue perform() fired")
        
        let sourceView = source.view!
        let destView = destination.view!
        
        let screenHeight = UIScreen.main.bounds.height
        let screenWidht = UIScreen.main.bounds.width
        
        destView.center = CGPoint(x: 0 - (screenWidht / 2), y: screenHeight / 2)
        
        let window = UIApplication.shared.keyWindow!
        
        window.insertSubview(destView, aboveSubview: sourceView)
        
        UIView.animate(withDuration: 0.3, delay: 0.0, options: .curveEaseOut, animations: {
            
            let offset = screenWidht / 2 + 12
            
            destView.center = CGPoint(x: offset - screenWidht / 2, y: screenHeight / 2)
            
            let currentX = sourceView.center.x
            sourceView.center = CGPoint(x: currentX + 20, y: screenHeight / 2)
            
        }) { (Complete) in
            
            _ = self.source.navigationController?.popViewController(animated: false)
        }
        
        
    }
    
    
}
