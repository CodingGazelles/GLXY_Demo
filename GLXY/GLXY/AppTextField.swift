//
//  AppTextField.swift
//  GLXY
//
//  Created by Tancrède on 7/7/16.
//  Copyright © 2016 glxy.eu. All rights reserved.
//

import UIKit



@IBDesignable
class AppTextField: UITextField {
    
    @IBInspectable var inset: CGFloat = 0
    
    override func textRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectInset(bounds, inset, inset)
    }
    
    override func editingRectForBounds(bounds: CGRect) -> CGRect {
        return textRectForBounds(bounds)
    }
    
    
}