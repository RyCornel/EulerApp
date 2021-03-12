//
//  ViewController.swift
//  EulerApp
//
//  Created by Ryan Cornel on 3/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    var titleConstraintStart: NSLayoutConstraint!
    var titleConstraintEnd: NSLayoutConstraint!
    
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
    
    override func viewDidAppear(_ animated: Bool) {
        titleConstraintStart.isActive = false
        titleConstraintEnd.isActive = true
    }
    
    let mainImage: UIImageView = {
       
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "euler_portrait")
        
        return imageView
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .gray
        
        
    }
    
    func setImageView() {
        self.view.addSubview(mainImage)
        mainImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        mainImage.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -20).isActive = true
        
    }
    
    func setLabel() {
        
        self.view.addSubview(appNameLabel)
        appNameLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        appNameLabel.centerYAnchor.constraint(equalTo: mainImage.topAnchor, constant: -40).isActive = true
        appNameLabel.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        appNameLabel.transform = CGAffineTransform(scaleX: 0, y: 0)

    }
    
    

}

