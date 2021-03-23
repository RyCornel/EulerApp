//
//  Results.swift
//  EulerApp
//
//  Created by Ryan Cornel on 3/22/21.
//

import Foundation
import UIKit


class Results: UIView {
    
    let results = SwipeRightPopUp()
    
    fileprivate let resultsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.text = "Test"
        label.textAlignment = .center
        label.textColor = .white

        return label
    }()
    
    fileprivate let container: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = .black
        v.layer.cornerRadius = 24
        
        return v
    }()
    
    fileprivate let resultsArrayScrollView: UIScrollView = {
        let resultsArray = UIScrollView()
        resultsArray.translatesAutoresizingMaskIntoConstraints = false
        resultsArray.backgroundColor = .darkGray
        
        return resultsArray
    }()
    
    fileprivate lazy var stack: UIStackView = {
        let stack = UIStackView(arrangedSubviews:  [resultsLabel, resultsArrayScrollView])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        
        return stack
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
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
        
        self.addSubview(resultsArrayScrollView)
        resultsArrayScrollView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        resultsArrayScrollView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        resultsArrayScrollView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        resultsArrayScrollView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        resultsArrayScrollView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        resultsArrayScrollView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        resultsArrayScrollView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.7).isActive = true
        resultsArrayScrollView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.45).isActive = true
        
        container.addSubview(stack)
        stack.topAnchor.constraint(equalTo: container.topAnchor).isActive = true
        stack.bottomAnchor.constraint(equalTo: container.bottomAnchor).isActive = true
        stack.leadingAnchor.constraint(equalTo: container.leadingAnchor).isActive = true
        stack.trailingAnchor.constraint(equalTo: container.trailingAnchor).isActive = true
        stack.heightAnchor.constraint(equalTo: container.heightAnchor, multiplier: 0.95).isActive = true
        stack.widthAnchor.constraint(equalTo: container.widthAnchor, multiplier: 1).isActive = true
        stack.centerYAnchor.constraint(equalTo: container.centerYAnchor).isActive = true
        stack.centerXAnchor.constraint(equalTo: container.centerXAnchor).isActive = true
        
        
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    
    }

}
