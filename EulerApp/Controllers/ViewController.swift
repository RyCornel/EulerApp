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
        label.textColor = UIColor.white
        label.textAlignment = .center
        label.font = UIFont(name: "Marker Felt", size: 65)
        
        return label
    }()
    
    let subLabel: UILabel = {
       
        let subLabel = UILabel()
        subLabel.text = "Problem 14"
        subLabel.translatesAutoresizingMaskIntoConstraints = false
        subLabel.textColor = UIColor.white
        subLabel.textAlignment = .center
        subLabel.font = UIFont(name: "Marker Felt", size: 25)
        
        return subLabel
    }()
    
    let continueButton: UIButton = {
       
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Continue", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        button.backgroundColor = UIColor(ciColor: .white)
        
        return button
        
    }()
    
    override func viewDidAppear(_ animated: Bool) {
        titleConstraintStart.isActive = false
        titleConstraintEnd.isActive = true
        
        
    }
    
    let mainImage: UIImageView = {
       
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "euler_portrait")
        
        return imageView
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .black
        setImageView()
        setLabel()
        setButton()
        
        
        titleConstraintStart = appNameLabel.centerYAnchor.constraint(equalTo: mainImage.centerYAnchor, constant: 5)
        
        titleConstraintEnd = appNameLabel.centerYAnchor.constraint(equalTo: mainImage.topAnchor, constant: 10)
        
        titleConstraintStart.isActive = true
    }
    
    func setImageView() {
        self.view.addSubview(mainImage)
        mainImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        mainImage.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -20).isActive = true
        
    }
    
    func setLabel() {
        
        self.view.addSubview(appNameLabel)
        appNameLabel.centerYAnchor.constraint(equalTo: mainImage.topAnchor, constant: -80).isActive = true
        appNameLabel.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        appNameLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        appNameLabel.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        
        self.view.addSubview(subLabel)
        subLabel.centerYAnchor.constraint(equalTo: mainImage.topAnchor, constant: -40).isActive = true
        subLabel.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        subLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        subLabel.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)

    }
    
    func setButton() {
        
        self.view.addSubview(continueButton)
        continueButton.widthAnchor.constraint(equalToConstant: 250).isActive = true
        continueButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        continueButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -100).isActive = true
        continueButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        continueButton.addTarget(self, action: #selector(showHome), for: .touchUpInside)
        
    }
    
    @objc func showHome() {
        
    }

}

