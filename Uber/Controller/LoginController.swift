//
//  ViewController.swift
//  Uber
//
//  Created by JinBae Jeong on 2020/02/21.
//  Copyright © 2020 pino. All rights reserved.
//

import UIKit

class LoginController: UIViewController {

    // MARK: - Properties
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "UBER"
        label.font = UIFont(name: "Avenir-Light", size: 36)
        label.textColor = UIColor(white: 1, alpha: 0.8)
        
        return label
    }()
    
    // MARK: - Lifecycle    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.init(red: 25/255, green: 25/255, blue: 25/255, alpha: 1)
        
        // addSubView
        view.addSubview(titleLabel)
        // Autolayout - NSLayoutConstraint
        /*
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0)
        ])
        */
        
        // Autolayout - Extensions
        titleLabel.anchor(top: view.safeAreaLayoutGuide.topAnchor)
        titleLabel.centerX(inView: view)
    }
    
    // status bar 색상 변경
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    

}

