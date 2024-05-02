// 
//  LoginViewController.swift
//  hesoyam
//
//  Created by CT4TuEI3 on 02.05.2024.
//


import UIKit
import SnapKit

final class LoginViewController: UIViewController {
    
    // MARK: - Dependency
    
    var presenter: LoginPresenterProtocol?
    
    
    // MARK: - UI Elements
    
    private let userNameTextField = CustomTextField(textFieldType: .login)
    private let passwordTextField = CustomTextField(textFieldType: .password)
    
    private lazy var signInButton: CustomButton = {
        let button = CustomButton(title: "Sign In", isHaveBackground: true, fontSize: .large)
        button.addTarget(self, action: #selector(signInPressed), for: .touchUpInside)
        return button
    }()
    
    private lazy var createAccountButton: CustomButton = {
        let button = CustomButton(title: "Create account", isHaveBackground: false, fontSize: .medium)
        button.addTarget(self, action: #selector(createAccountPressed), for: .touchUpInside)
        return button
    }()
    
    private lazy var resetPasswordButton: CustomButton = {
        let button = CustomButton(title: "Reset password", isHaveBackground: false, fontSize: .small)
        button.addTarget(self, action: #selector(resetPasswordPressed), for: .touchUpInside)
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
        title = "Login"
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .systemBackground
        
        textFieldsStackView.addArrangedSubviews(userNameTextField, passwordTextField)
        view.addSubviews(textFieldsStackView, signInButton, createAccountButton, resetPasswordButton)
        setupConstraints()
    }
}


// MARK: - Actions

private
extension LoginViewController {
    @objc
    func signInPressed() {
        print(#function)
    }
    
    @objc
    func createAccountPressed() {
        let vc = CreateAccountBuilder.createCreateAccountModule()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc
    func resetPasswordPressed() {
        print(#function)
    }
}


// MARK: - LoginViewControllerProtocol

extension LoginViewController: LoginViewControllerProtocol {
    
}


// MARK: - Constraints

extension LoginViewController {
    func setupConstraints() {
        textFieldsStackView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(32)
            make.leading.trailing.equalToSuperview().inset(32)
        }
        
        userNameTextField.snp.makeConstraints { make in
            make.height.equalTo(48)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.height.equalTo(48)
        }
        
        signInButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(textFieldsStackView.snp.bottom).offset(32)
            make.leading.trailing.equalToSuperview().inset(64)
        }
        
        createAccountButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(signInButton.snp.bottom).offset(8)
            make.leading.trailing.equalToSuperview().inset(64)
        }
        
        resetPasswordButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(createAccountButton.snp.bottom).offset(8)
            make.leading.trailing.equalToSuperview().inset(64)
        }
    }
}
