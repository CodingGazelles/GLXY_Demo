//
//  ToolbarView.swift
//  GLXY
//
//  Created by Tancrède on 7/16/16.
//  Copyright © 2016 glxy.eu. All rights reserved.
//

import UIKit


class ToolbarView: UIView {
    
    
    
    @IBOutlet var rootView: UIView!
    
    
    //MARK: - Initialization
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        initSubviews()
        
    }
    
    func initSubviews() {
        
        let nib = UINib(nibName: "Toolbar", bundle: nil)
        let _ = nib.instantiateWithOwner(self, options: nil)
        
        rootView.frame = bounds
        rootView.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        
        addSubview(rootView)
        
        
    }
    
}