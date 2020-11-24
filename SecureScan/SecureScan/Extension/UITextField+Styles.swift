//
//  UITextField+Styles.swift
//  SecureScan
//
//  Created by Jonas Schlauch on 24.11.20.
//

import Foundation
import UIKit

extension UITextField {
    
    func initStyle1(placeholder: String) {
        self.attributedPlaceholder = NSAttributedString(string: placeholder,
                                     attributes: [NSAttributedString.Key.foregroundColor: UIColor.darkGray])
        
        self.layoutIfNeeded()
        
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0.0, y: self.frame.size.height - 10, width:  self.frame.size.width, height: 1)
        bottomLine.backgroundColor = UIColor.darkGray.cgColor
        self.borderStyle = UITextField.BorderStyle.none
        self.layer.addSublayer(bottomLine)
    }
}
