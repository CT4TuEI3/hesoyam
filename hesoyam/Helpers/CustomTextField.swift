//
//  CustomTextField.swift
//  hesoyam
//
//  Created by CT4TuEI3 on 02.05.2024.
//


import UIKit

enum TextFieldType {
    case login
    case email
    case password
}

final class CustomTextField: UITextField {
    
    // MARK: - Private properties
    
    private let textFieldType: TextFieldType
    
    
    // MARK: - Lifecycle
    
    init(textFieldType: TextFieldType) {
        self.textFieldType = textFieldType
        super.init(frame: .zero)
        setupLayout()
        setupTextField()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - Private methods
    
    private func setupLayout() {
        backgroundColor = .secondarySystemBackground
        layer.cornerRadius = 12
        leftViewMode = .always
        leftView = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: self.frame.height))
    }
    
    private func setupTextField() {
        returnKeyType = .done
        autocorrectionType = .no
        
        switch textFieldType {
            case .login:
                placeholder = "Username"
            case .email:
                placeholder = "Email"
                keyboardType = .emailAddress
                textContentType = .emailAddress
            case .password:
                placeholder = "Password"
                textContentType = .oneTimeCode
                isSecureTextEntry = true
        }
    }
}
