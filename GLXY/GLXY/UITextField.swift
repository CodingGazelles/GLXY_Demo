//
//  AppTextField.swift
//  GLXY
//
//  Created by Tancrède on 7/7/16.
//  Copyright © 2016 glxy.eu. All rights reserved.
//

import UIKit



// Add an insert to a UITextView

//@IBDesignable
//class XYTextField: UITextField {
//    
//    @IBInspectable var inset: CGFloat = 0
//    
//    
//    override func textRectForBounds(bounds: CGRect) -> CGRect {
//        return CGRectInset(bounds, inset, inset)
//    }
//    
//    override func editingRectForBounds(bounds: CGRect) -> CGRect {
//        return textRectForBounds(bounds)
//    }
//    
//}


public extension UITextField {
    
    @IBInspectable public var leftSpacer:CGFloat {
        get {
            if let l = leftView {
                return l.frame.size.width
            } else {
                return 0
            }
        } set {
            leftViewMode = .Always
            leftView = UIView(frame: CGRect(x: 0, y: 0, width: newValue, height: frame.size.height))
        }
    }
    
    @IBInspectable var borderColor : UIColor? {
        get {
            if let cgcolor = layer.borderColor {
                return UIColor(CGColor: cgcolor)
            } else {
                return nil
            }
        }
        set {
            layer.borderColor = newValue?.CGColor
            
            // width must be at least 1.0
            if layer.borderWidth < 1.0 {
                layer.borderWidth = 1.0
            }
        }
    }
}