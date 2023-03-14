//
//  CustomTextField.swift
//  Online Shop Satria Adhi Pradana
//
//  Created by Denis Bokov on 14.03.2023.
//

import UIKit

final class CustomTextField: UITextField {

    enum CustomTextFieldType {
        case firstName
        case lastName
        case email
        case password
    }

    private let loginFieldType: CustomTextFieldType
    private let padding = UIEdgeInsets()
    
    init(fieldType: CustomTextFieldType) {
        self.loginFieldType = fieldType
        super.init(frame: .zero)
    
        switch fieldType {
        case .firstName:
            setupTextField(placeholder: "First name")
        case .lastName:
            setupTextField(placeholder: "Last name")
        case .email:
            self.placeholder = "Email"
        case .password:
            setupTextField(placeholder: "Password")
        }
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        bounds.inset(by: padding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        bounds.inset(by: padding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        bounds.inset(by: padding)
    }
    
    private func setupTextField(placeholder: String) {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .center
        backgroundColor = .secondarySystemBackground
        layer.cornerRadius = 15
        
        attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [.foregroundColor : UIColor(red: 0.482, green: 0.482, blue: 0.482, alpha: 1), .paragraphStyle : paragraphStyle])
        
        font = UIFont(name: "Montserrat-SemiBold", size: 8.39)
        
        returnKeyType = .go
        autocorrectionType = .no
        autocapitalizationType = .none
    }
}
