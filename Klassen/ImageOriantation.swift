//
//  ImageOriantation.swift
//  Klassen
//
//  Created by Gustav Wadström on 2017-01-16.
//  Copyright © 2017 Gustav Wadström. All rights reserved.
//

import UIKit

class ImageOriantation: UIImageView {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        prepareImageView()
        
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        
        prepareImageView()
        
    }
    
    func prepareImageView() {
        
        let img = fixImageOriantation(img: image!)
        image = img
        
    }
    
    func fixImageOriantation(img: UIImage) -> UIImage {
        
        if (img.imageOrientation == UIImageOrientation.up) {
            return img
        }
        
        UIGraphicsBeginImageContextWithOptions(img.size, false, img.scale)
        let rect = CGRect(x: 0, y: 0, width: img.size.width, height: img.size.height)
        img.draw(in: rect)
        
        let normalizedImage: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return normalizedImage
        
        
    }

}
