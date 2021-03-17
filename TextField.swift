//
//  TextField.swift
//  EulerApp
//
//  Created by Ryan Cornel on 3/17/21.
//

import Foundation
import UIKit


class TextFieldClass: UITextField {
    
     let textInput: UITextField = {
        
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.frame(forAlignmentRect: CGRect(x: 10, y: 10, width: 100, height: 50))
        textField.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        textField.textAlignment = .center
        textField.backgroundColor = .blue
        
        return textField
        
    }()
    
}

