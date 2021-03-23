//
//  Results.swift
//  EulerApp
//
//  Created by Ryan Cornel on 3/22/21.
//

import Foundation
import UIKit


class Results: UIView, UIScrollViewDelegate {
    
    public let resultsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textAlignment = .center
        label.textColor = .white
        label.numberOfLines = 10000
        return label
    }()
    
    fileprivate let container: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = .black
        v.layer.cornerRadius = 24
        
        return v
    }()
    
    public let resultsArrayScrollView: UIScrollView = {
        let resultsArray = UIScrollView()
        resultsArray.translatesAutoresizingMaskIntoConstraints = false
        resultsArray.backgroundColor = .black
        resultsArray.contentSize.height = .infinity

        return resultsArray
    }()
    
//    public let resultsArrayTextView: UITextView = {
//        let resultsTextArray = UITextView()
//        resultsTextArray.translatesAutoresizingMaskIntoConstraints = false
//        resultsTextArray.backgroundColor = .darkGray
//
//        return resultsTextArray
//    }()
    
    fileprivate lazy var stack: UIStackView = {
        let stack = UIStackView(arrangedSubviews:  [resultsLabel, resultsArrayScrollView])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        
        return stack
    }()
    
    var result: String!
    
    convenience init(result: String, sequence: [Int]) {
        self.init()
        self.result = result
        print(result)
        print(sequence)
        setsResults()
        // adding it to the scrollview
        
    }

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
        
        self.addSubview(resultsLabel)
        resultsLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        resultsLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        resultsLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        resultsLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        resultsLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        resultsLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        resultsLabel.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.7).isActive = true
        resultsLabel.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.45).isActive = true
                
        self.addSubview(resultsArrayScrollView)
        resultsArrayScrollView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        resultsArrayScrollView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        resultsArrayScrollView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        resultsArrayScrollView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        resultsArrayScrollView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        resultsArrayScrollView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        resultsArrayScrollView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.7).isActive = true
        resultsArrayScrollView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.45).isActive = true
        
        
//        self.addSubview(resultsArrayTextView)
//        resultsArrayTextView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
//        resultsArrayTextView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
//        resultsArrayTextView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
//        resultsArrayTextView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
//        resultsArrayTextView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
//        resultsArrayTextView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
//        resultsArrayTextView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.7).isActive = true
//        resultsArrayTextView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.45).isActive = true
        
        
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
    
    func setsResults() {
        self.addSubview(resultsArrayScrollView)
        resultsLabel.text = result
        
        
    }

    required init?(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
    
    }
    
    
    

}
