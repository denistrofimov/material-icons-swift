//
//  MaterialIcons.swift
//  Material Icons Swift
//
//  Created by Denis Trofimov on 06.08.16.
//  Copyright © 2016 Denis Trofimov. All rights reserved.
//

import UIKit

public class MaterialIcons {
    
    public class func fontOfSize(size:CGFloat) -> UIFont! {
    
        let fontName = "MaterialIcons-Regular"
        
        guard let font = UIFont(name: fontName, size: size) else {
            
            self.dynamicallyLoadFontNamed(fontName)
            
            return UIFont(name: fontName, size: size)
            
        }
        
        return font;
        
    }

    
    private class func dynamicallyLoadFontNamed(name:String) {

        guard
            let url = NSBundle(forClass: MaterialIcons.self).URLForResource("\(name)", withExtension: "ttf"),
            let fontData = NSData(contentsOfURL:url) else {
                
                print("Failed to register font")
                
            return
        }
        
        let dataProvider = CGDataProviderCreateWithCFData(fontData)
        let fontRef = CGFontCreateWithDataProvider(dataProvider)
        var errorRef: Unmanaged<CFError>? = nil
        
        if (CTFontManagerRegisterGraphicsFont(fontRef!, &errorRef) == false) {
            print("Failed to register font - register graphics font failed - this font may have already been registered in the main bundle.")
        }

        
    }
    
}
