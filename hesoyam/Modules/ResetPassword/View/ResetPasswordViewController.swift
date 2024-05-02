// 
//  ResetPasswordViewController.swift
//  hesoyam
//
//  Created by CT4TuEI3 on 02.05.2024.
//


import UIKit
import SnapKit

final class ResetPasswordViewController: UIViewController {
    
    // MARK: - Dependency
    
    var presenter: ResetPasswordPresenterProtocol?
    
    
    // MARK: - UI Elements
    
    private let emailTextField = CustomTextField(textFieldType: .email)
    
    private lazy var resetButton: CustomButton = {
        let button = CustomButton(title: "Reset", isHaveBackground: true, fontSize: .large)
        button.addTarget(self, action: #selector(resetPressed), for: .touchUpInside)
        return button
    }()
    
    
    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    
    // MARK: - Private Methods
    
    private func setupUI() {
        title = "Reset"
        view.backgroundColor = .systemBackground
        
        view.addSubviews(emailTextField, resetButton)
        setupConstraints()
    }
    
    
    // MARK: - Actions
    
    @objc
    private func resetPressed() {
        print(#function)
    }
}


// MARK: - ResetPasswordViewControllerProtocol

extension ResetPasswordViewController: ResetPasswordViewControllerProtocol {
    
}


// MARK: - Constraints

private
extension ResetPasswordViewController {
    func setupConstraints() {
        emailTextField.snp.makeConstraints { make in
            make.height.equalTo(48)
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(32)
            make.leading.trailing.equalToSuperview().inset(32)
        }
        
        resetButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(emailTextField.snp.bottom).offset(32)
            make.leading.trailing.equalToSuperview().inset(64)
        }
    }
}
