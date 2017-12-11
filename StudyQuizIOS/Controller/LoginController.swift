//
//  ViewController.swift
//  StudyQuizIOS
//
//  Created by Nguyen The Phuong on 12/11/17.
//  Copyright © 2017 Nguyen The Phuong. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    let loginView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let logoImageview: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
//        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let usernameTextField: SQTextField = {
        let tf = SQTextField()
        return tf
    }()
    
    let passwordTextField: SQTextField = {
        let tf = SQTextField()
        return tf
    }()
    
    lazy var loginButton: SQButton = {
        let button = SQButton(type: .system)
        button.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        return button
    }()
    
    //MARK: Controller lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationController?.isNavigationBarHidden = true
        setupKeyboardGestureRecognizer()
        
        setupViews()
    }
    
    override func viewDidLayoutSubviews() {
        setupConstraintViews()
    }
    
    //MARK: Setup Subviews
    
    func setupViews(){
        view.addSubview(loginView)
        loginView.addSubview(logoImageview)
        loginView.addSubview(usernameTextField)
        loginView.addSubview(passwordTextField)
        loginView.addSubview(loginButton)
        
        usernameTextField.placeholder = "Enter your username"
        passwordTextField.placeholder = "Enter your password"
        passwordTextField.isSecureTextEntry = true
        loginButton.setTitle("Login", for: .normal)
    }
    
    func setupConstraintViews(){
        loginView.leadingAnchor.constraint(equalTo: view.safeLeadingAnchor, constant: 20).isActive = true
        loginView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        loginView.trailingAnchor.constraint(equalTo: view.safeTrailingAnchor, constant: -20).isActive = true
        
        logoImageview.leadingAnchor.constraint(equalTo: loginView.leadingAnchor).isActive = true
        logoImageview.topAnchor.constraint(equalTo: loginView.topAnchor).isActive = true
        logoImageview.trailingAnchor.constraint(equalTo: loginView.trailingAnchor).isActive = true
        let image = #imageLiteral(resourceName: "logo")
        let logoHeight = (view.safeWidth - 40) * image.size.height / image.size.width
        logoImageview.heightAnchor.constraint(equalToConstant: logoHeight).isActive = true
        logoImageview.image = image
        
        usernameTextField.topAnchor.constraint(equalTo: logoImageview.bottomAnchor, constant: 0).isActive = true
        usernameTextField.leadingAnchor.constraint(equalTo: loginView.leadingAnchor).isActive = true
        usernameTextField.trailingAnchor.constraint(equalTo: loginView.trailingAnchor).isActive = true
        
        passwordTextField.leadingAnchor.constraint(equalTo: loginView.leadingAnchor).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 15).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: loginView.trailingAnchor).isActive = true
        
        loginButton.leadingAnchor.constraint(equalTo: loginView.leadingAnchor).isActive = true
        loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 15).isActive = true
        loginButton.trailingAnchor.constraint(equalTo: loginView.trailingAnchor).isActive = true
        
        let loginViewHeight = logoHeight + 45 * 3 + 15 * 2
        loginView.heightAnchor.constraint(equalToConstant: loginViewHeight).isActive = true
    }
    
    //MARK: handle methods
    
    @objc func handleLogin(){
        if let username = usernameTextField.text, let password = passwordTextField.text, username.isEmpty == false, password.isEmpty == false{
            
        }
        
    }
}

