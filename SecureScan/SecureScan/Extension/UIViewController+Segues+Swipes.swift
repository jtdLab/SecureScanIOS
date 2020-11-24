//
//  UIViewController+Segues.swift
//  SecureScan
//
//  Created by Jonas Schlauch on 24.11.20.
//

import Foundation
import UIKit

extension UIViewController {
    
    enum Segues: String {
        case DataSecurity_Data
        case Data_Home
        case Home_Scan
        case Home_Result
    }
}

extension UIViewController {
    
    func addSwipeLeft(onSwipe: Selector) {
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: onSwipe)
            swipeLeft.direction = .left
            self.view.addGestureRecognizer(swipeLeft)
    }
    
    func addSwipeRight(onSwipe: Selector) {
        let swipeRight = UISwipeGestureRecognizer(target: self, action: onSwipe)
            swipeRight.direction = .right
            self.view.addGestureRecognizer(swipeRight)
    }
}
