//
//  Sequence.swift
//  EulerApp
//
//  Created by Ryan Cornel on 3/12/21.
//

import Foundation
import UIKit

class SwipeLeftPopUp: UIView {
    

    fileprivate let container: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = .white
        v.layer.cornerRadius = 24
        
        return v
    }()
    
    fileprivate lazy var stack: UIStackView = {
        let stack = UIStackView(arrangedSubviews:  [])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        
        return stack
    }()
    
    @objc fileprivate func animateOut() {
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
            self.container.transform = CGAffineTransform(translationX: 0, y: -self.frame.height)
            self.alpha = 0
        }) { (complete) in
            if complete {
                self.removeFromSuperview()
            }
        }
    }

    func sequence() {
  
        var sequence : [Int] = []

        var number : Int = 5

        while number != 1 {

            if (number % 2 == 0){

                number = number / 2
                sequence.append(number)

            } else {

                number = 3 * number + 1
                sequence.append(number)

            }
        }
  
    
  print (sequence)
  print ("There are \(sequence.count) indexes in this array.")
  return
    
}
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    
        self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(animateOut)))
        self.backgroundColor = UIColor.gray
        self.frame = UIScreen.main.bounds
        
        self.addSubview(container)
        container.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        container.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        container.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.7).isActive = true
        container.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.45).isActive = true
        
        container.addSubview(stack)
//        stack.topAnchor.constraint(equalTo: container.topAnchor).isActive = true
        stack.leadingAnchor.constraint(equalTo: container.leadingAnchor).isActive = true
        stack.trailingAnchor.constraint(equalTo: container.trailingAnchor).isActive = true
//        stack.bottomAnchor.constraint(equalTo: container.bottomAnchor).isActive = true
        stack.heightAnchor.constraint(equalTo: container.heightAnchor, multiplier: 0.5).isActive = true
        stack.centerYAnchor.constraint(equalTo: container.centerYAnchor).isActive = true
    
    
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    
    } 

}

