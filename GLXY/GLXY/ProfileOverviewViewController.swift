//
//  ProfileOverviewViewController.swift
//  GLXY
//
//  Created by Tancrède on 7/11/16.
//  Copyright © 2016 glxy.eu. All rights reserved.
//

import UIKit

import PageMenuFramework



class ProfileOverviewViewController: UIViewController {
    
    
    let store = XYStateStore.defaultStore()
    var state: XYAppState!
    
    @IBOutlet var rootView: UIView!
    
    var pageMenu : CAPSPageMenu?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AppLogger.debug("ProfileOverviewViewController did load")
        
        
        // Array to keep track of controllers in page menu
        var controllerArray : [UIViewController] = []
        
        // Create variables for all view controllers you want to put in the
        // page menu, initialize them, and add each to the controller array.
        // (Can be any UIViewController subclass)
        // Make sure the title property of all view controllers is set
        // Example:
//        var controller : UIViewController = UIViewController(nibName: "controllerNibName", bundle: nil)
//        controller.title = "SAMPLE TITLE"
        
        let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        var controller : UIViewController = storyboard.instantiateViewControllerWithIdentifier( "WinksTableController")
        controller.title = "Winks"
        controllerArray.append(controller)
        
        controller = storyboard.instantiateViewControllerWithIdentifier( "InboxViewController")
        controller.title = "Inbox"
        controllerArray.append(controller)
        
        controller = storyboard.instantiateViewControllerWithIdentifier( "VisitsViewController")
        controller.title = "Visits"
        controllerArray.append(controller)
        
        
        // Customize page menu to your liking (optional) or use default settings by sending nil for 'options' in the init
        // Example:
        let parameters: [CAPSPageMenuOption] = [
            .ScrollMenuBackgroundColor( UIColor(red: 237/255, green: 241/255, blue: 242/255, alpha: 1)),
            .SelectionIndicatorColor( UIColor(red: 1, green: 1, blue: 1, alpha: 0)),
            .SelectedMenuItemLabelColor( UIColor(red: 50/255, green: 50/255, blue: 50/255, alpha: 1)),
            .UnselectedMenuItemLabelColor( UIColor(red: 159/255, green: 162/255, blue: 161/255, alpha: 1)),
            .MenuHeight( 0.088 * self.view.frame.height),
            .MenuItemSeparatorWidth(4.3),
            .UseMenuLikeSegmentedControl(true),
            .MenuItemSeparatorPercentageHeight(0.1)
        ]
        
        
        // Initialize page menu with controller array, frame, and optional parameters
        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRectMake(0.0, 0.0, self.view.frame.width, self.view.frame.height), pageMenuOptions: parameters)
        
        
        
        // Lastly add page menu as subview of base view controller view
        // or use pageMenu controller in you view hierachy as desired
        self.view.addSubview(pageMenu!.view)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}