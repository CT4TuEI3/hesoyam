// 
//  CreateAccountViewController.swift
//  hesoyam
//
//  Created by CT4TuEI3 on 02.05.2024.
//


import UIKit

final class CreateAccountViewController: UIViewController {
    
    // MARK: - Dependency
    
    var presenter: CreateAccountPresenterProtocol?
    
    
    // MARK: - UI Elements
    
    private let userNameTextField = CustomTextField(textFieldType: .login)
    private let emailTextField = CustomTextField(textFieldType: .email)
    private let passwordTextField = CustomTextField(textFieldType: .password)
    
    private lazy var registerButton: CustomButton = {
        let button = CustomButton(title: "Sign Up", isHaveBackground: true, fontSize: .large)
        button.addTarget(self, action: #selector(signUpPressed), for: .touchUpInside)
        return button
    }()
    
    private let textFieldsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 16
        return stackView
    }()
    
    
    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    
    // MARK: - Private Methods
    
    private func setupUI() {
        title = "Sign Up"
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .systemBackground
        
        textFieldsStackView.addArrangedSubviews(userNameTextField, emailTextField, passwordTextField)
        view.addSubviews(textFieldsStackView, registerButton)
        setupConstraints()
    }
    
    
    // MARK: - Actions
    
    @objc
    private func signUpPressed() {
        print(#function)
    }
}


// MARK: - CreateAccountViewControllerProtocol

extension CreateAccountViewController: CreateAccountViewControllerProtocol {
    
}


// MARK: - Constraints

private
extension CreateAccountViewController {
    func setupConstraints() {
        textFieldsStackView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(32)
            make.leading.trailing.equalToSuperview().inset(32)
        }
        
        userNameTextField.snp.makeConstraints { make in
            make.height.equalTo(48)
        }
        
        emailTextField.snp.makeConstraints { make in
            make.height.equalTo(48)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.height.equalTo(48)
        }
        
        registerButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(textFieldsStackView.snp.bottom).offset(32)
            make.leading.trailing.equalToSuperview().inset(64)
        }
    }
}
