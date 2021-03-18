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
        self.frame(forAlignmentRect: CGRect(x: 1, y: 1, width: 100, height: 50))
        self.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        self.textAlignment = .center
        self.backgroundColor = .blue
        
    }


    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
}


    

