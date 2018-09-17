//
//  ViewController+extension.swift
//  Flash Chat
//
//  Created by Larry Nickerson on 9/3/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation
import UIKit


// Make stored properties in extension -- a workaround
struct AssociatedKeys {
    static var keyboardHeight: CGFloat = 270.0  // default
}


//Mark: - KeyboardAdjustable Protocol Definition
protocol KeyboardAdjustable {
    func keyboardWillShow(_ notification: Notification)
}

extension UIViewController : KeyboardAdjustable {

    private(set) var keyboardHeight: CGFloat {
        get {
            guard let value = objc_getAssociatedObject(self, &AssociatedKeys.keyboardHeight) as? CGFloat else {
                return CGFloat(270.0)
            }
            return value
        }
        set(newValue) {
            objc_setAssociatedObject(self, &AssociatedKeys.keyboardHeight, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    //MARK: - Keyboard Adjustable Protocol methods

 
    @objc func keyboardWillShow(_ notification: Notification) {
        if let keyboardFrame: NSValue = notification.userInfo?[UIKeyboardFrameEndUserInfoKey] as? NSValue {
            let keyboardRectangle = keyboardFrame.cgRectValue
            keyboardHeight = keyboardRectangle.height
        }
    }
}

