// 
//  LoginPresenter.swift
//  hesoyam
//
//  Created by CT4TuEI3 on 02.05.2024.
//


import Foundation

protocol LoginViewControllerProtocol: AnyObject {
    
}

protocol LoginPresenterProtocol {
    
}

final class LoginPresenter {
    
    // MARK: - Private properties
    
    private weak var view: LoginViewControllerProtocol?
    
    
    // MARK: - Lifecycle
    
    init(view: LoginViewControllerProtocol) {
        self.view = view
    }
}


// MARK: - LoginPresenterProtocol

extension LoginPresenter: LoginPresenterProtocol {
    
}
