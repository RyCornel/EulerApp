//
//  ViewController.swift
//  EulerApp
//
//  Created by Ryan Cornel on 3/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    let appNameLabel: UILabel = {
       
        let label = UILabel()
        label.text = "Project Euler"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont(name: "Marker Felt", size: 80)
        
        return label
    }()
    
    let continueButton: UIButton = {
       
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Continue", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        button.backgroundColor = UIColor(white: 1.0, alpha: 0.9)
        
        return button
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .gray
        
        
    }

}

