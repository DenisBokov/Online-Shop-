//
//  LoginViewController.swift
//  Online Shop Satria Adhi Pradana
//
//  Created by Denis Bokov on 12.03.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    private let titelLabel = LoginHeaderView(titel: "Welcome back")
    private let firstNameField = CustomTextField(fieldType: .firstName)
    private let passwordField = CustomTextField(fieldType: .password)
    
    private let eyeButton = EyeButton()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupPasswordTextField()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }

    private func setupUI() {
        view.backgroundColor = .systemBackground
        
        view.addSubview(titelLabel)
        view.addSubview(firstNameField)
        view.addSubview(passwordField)
        
        titelLabel.translatesAutoresizingMaskIntoConstraints = false
        firstNameField.translatesAutoresizingMaskIntoConstraints = false
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titelLabel.topAnchor.constraint(equalTo: view.topAnchor),
            titelLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            titelLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            firstNameField.topAnchor.constraint(equalTo: titelLabel.topAnchor, constant: 259),
            firstNameField.centerXAnchor.constraint(equalTo: titelLabel.centerXAnchor),
            firstNameField.heightAnchor.constraint(equalToConstant: 29),
            firstNameField.widthAnchor.constraint(equalToConstant: 289),
            
            passwordField.topAnchor.constraint(equalTo: firstNameField.bottomAnchor, constant: 35),
            passwordField.centerXAnchor.constraint(equalTo: firstNameField.centerXAnchor),
            passwordField.heightAnchor.constraint(equalToConstant: 29),
            passwordField.widthAnchor.constraint(equalToConstant: 289),
        ])
    }
    
    private func setupPasswordTextField() {
        passwordField.rightView = eyeButton
        passwordField.rightViewMode = .always
    }
}

