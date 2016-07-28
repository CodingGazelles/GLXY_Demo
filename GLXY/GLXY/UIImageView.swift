//
//  AppUIImageView.swift
//  GLXY
//
//  Created by Tancrède on 7/11/16.
//  Copyright © 2016 glxy.eu. All rights reserved.
//

import UIKit



// Draw round corner to UIViews

extension UIView{
    
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
}

