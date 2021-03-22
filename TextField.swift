//
//  TextField.swift
//  EulerApp
//
//  Created by Ryan Cornel on 3/17/21.
//

import Foundation
import UIKit


class TextFieldClass: UITextField {
    
    func setup() {
    
        self.translatesAutoresizingMaskIntoConstraints = false
        self.frame(forAlignmentRect: CGRect(x: 0, y: 0, width: 200, height: 50))
        self.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        self.textAlignment = .center
        self.backgroundColor = .darkGray
        
        
    }


    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func numberEntered() -> Any {
        let rvc = ResultsScrollViewController()
        let number = 1
        let error = "Error. Please type a number greater than 0."
        
        if (number >= 1) {
            return CollatzFunction()
        } else {
            return error
        }
        
    }
    
}


    

