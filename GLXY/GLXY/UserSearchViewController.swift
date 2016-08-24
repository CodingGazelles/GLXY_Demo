//
//  UserSearchViewController.swift
//  GLXY
//
//  Created by Tancrède on 7/5/16.
//  Copyright © 2016 glxy.eu. All rights reserved.
//

import UIKit



class UserSearchViewController: UIViewController {
    
    let store = XYStateStore.defaultStore()
    var state: XYAppState!
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var stateTextField: UITextField!
    @IBOutlet weak var statustextField: UITextField!
    @IBOutlet weak var kidsTextField: UITextField!
    
    @IBOutlet weak var scrollview: UIScrollView!
    
//    @IBOutlet var tapGesture: UITapGestureRecognizer!
    
//    var keyboardIsUp = false
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        AppLogger.debug("UserSearchViewController did load")
        
//        tapGesture.enabled = false
//        
//        NSNotificationCenter.defaultCenter().addObserver(
//            self,
//            selector: #selector(UserSearchViewController.keyboardWillShow(_:)),
//            name: UIKeyboardWillShowNotification,
//            object: nil
//        )
//        NSNotificationCenter.defaultCenter().addObserver(
//            self,
//            selector: #selector(UserSearchViewController.keyboardWillHide(_:)),
//            name: UIKeyboardWillHideNotification,
//            object: nil
//        )
    }
    
    
//    deinit {
//        NSNotificationCenter.defaultCenter().removeObserver(self)
//    }
//    
//    
//    func adjustInsetForKeyboardShow(show: Bool, notification: NSNotification) {
//        
//        if keyboardIsUp != show {
//            
//            guard let value = notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue else { return }
//            let keyboardFrame = value.CGRectValue()
//            let adjustmentHeight = (CGRectGetHeight(keyboardFrame) + 20) * (show ? 1 : -1)
//            scrollview.contentInset.bottom += adjustmentHeight
//            scrollview.scrollIndicatorInsets.bottom += adjustmentHeight
//            
//            keyboardIsUp = show
//            
//        }
//        
//    }
//    
//    func keyboardWillShow(notification: NSNotification) {
//        tapGesture.enabled = true
//        adjustInsetForKeyboardShow(true, notification: notification)
//    }
//    
//    func keyboardWillHide(notification: NSNotification) {
//        adjustInsetForKeyboardShow(false, notification: notification)
//    }
//    
//    @IBAction func hideKeyboard(sender: AnyObject) {
//        
//        tapGesture.enabled = false
//        self.view.endEditing(true)
//        
////        usernameTextField.endEditing(true)
////        countryTextField.endEditing(true)
////        cityTextField.endEditing(true)
////        stateTextField.endEditing(true)
////        statustextField.endEditing(true)
////        kidsTextField.endEditing(true)
//        
//    }
    
}