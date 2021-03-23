//
//  Sequence.swift
//  EulerApp
//
//  Created by Ryan Cornel on 3/12/21.
//

import Foundation
import UIKit

class SwipeRightPopUp: UIView, UITextFieldDelegate {
    
    fileprivate let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.text = "Type any number below."
        label.numberOfLines = 3
        label.textAlignment = .center

        return label
    }()
    
    fileprivate let textField: UITextField = {
        let text = UITextField()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.placeholder = "Type Here"
        text.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        text.layer.cornerRadius = 10
        text.layer.masksToBounds = true
        text.textAlignment = .center
        text.keyboardType = .numberPad
        text.backgroundColor = .lightGray

        return text
    }()
    
    let continueButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("View Results", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        button.backgroundColor = UIColor(ciColor: .black)
        
        
        return button
    }()

    fileprivate let container: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = .white
        v.layer.cornerRadius = 24
        
        return v
    }()
    
    fileprivate lazy var stack: UIStackView = {
        let stack = UIStackView(arrangedSubviews:  [titleLabel, textField, continueButton])
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
    
    @objc fileprivate func animateIn() {
        self.container.transform = CGAffineTransform(translationX: 0, y: -self.frame.height)
        self.alpha = 0
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
            self.container.transform = .identity
            self.alpha = 1
        })
    
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(animateOut)))
        self.backgroundColor = UIColor.gray
        self.frame = UIScreen.main.bounds
        
        self.addSubview(container)
        container.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        container.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        container.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        container.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        container.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        container.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        container.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.7).isActive = true
        container.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.45).isActive = true
        
        self.addSubview(continueButton)
        continueButton.widthAnchor.constraint(equalToConstant: 250).isActive = true
        continueButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        continueButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -100).isActive = true
        continueButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        continueButton.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
        
        self.addSubview(textField)
        textField.widthAnchor.constraint(equalToConstant: 250).isActive = true
        textField.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        textField.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -100).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        textField.textAlignment = .center
        textField.keyboardAppearance = .dark
        textField.delegate = self
        
        container.addSubview(stack)
        stack.topAnchor.constraint(equalTo: container.topAnchor).isActive = true
        stack.bottomAnchor.constraint(equalTo: container.bottomAnchor).isActive = true
        stack.leadingAnchor.constraint(equalTo: container.leadingAnchor).isActive = true
        stack.trailingAnchor.constraint(equalTo: container.trailingAnchor).isActive = true
        stack.heightAnchor.constraint(equalTo: container.heightAnchor, multiplier: 0.8).isActive = true
        stack.widthAnchor.constraint(equalTo: container.widthAnchor, multiplier: 1).isActive = true
        stack.centerYAnchor.constraint(equalTo: container.centerYAnchor).isActive = true
        stack.centerXAnchor.constraint(equalTo: container.centerXAnchor).isActive = true
        
        self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTapButton(_:))))
//        self.addTarget(self, action: #selector(didTapButton(_ :)), for: .touchUpInside)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    
    }
    
    @objc func didTapButton(_ : UIButton) {
        print(collatzFunc())
        collatzFunc()
        animateIn()
//        _ = Results()
        self.container.addSubview(Results())
        
        return
    }
    
    
    func collatzFunc() {
        var sequence : [Int] = []
        let randomNum : String = textField.text ?? ""
        var number : Int = Int(randomNum) ?? 0


        while number != 1 {

            if (number % 2 == 0){

                number = number / 2
                sequence.append(number)

            } else {

                number = 3 * number + 1
                sequence.append(number)

            }
        }

        let resultsString : String = "There are \(sequence.count) elements in this array. With the last number being \(sequence[sequence.endIndex - 1])."

        print (resultsString)
        print (sequence)

        return
    }

}


