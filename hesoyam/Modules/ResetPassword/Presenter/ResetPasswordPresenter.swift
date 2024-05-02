// 
//  ResetPasswordPresenter.swift
//  hesoyam
//
//  Created by CT4TuEI3 on 02.05.2024.
//


import Foundation

protocol ResetPasswordViewControllerProtocol: AnyObject {
    
}

protocol ResetPasswordPresenterProtocol {
    
}

final class ResetPasswordPresenter {
    
    // MARK: - Private properties
    
    private weak var view: ResetPasswordViewControllerProtocol?
    
    
    // MARK: - Lifecycle
    
    init(view: ResetPasswordViewControllerProtocol) {
        self.view = view
    }
}


// MARK: - ResetPasswordPresenterProtocol

extension ResetPasswordPresenter: ResetPasswordPresenterProtocol {
    
}
