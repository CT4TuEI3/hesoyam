// 
//  CreateAccountPresenter.swift
//  hesoyam
//
//  Created by CT4TuEI3 on 02.05.2024.
//


import Foundation

protocol CreateAccountViewControllerProtocol: AnyObject {
    
}

protocol CreateAccountPresenterProtocol {
    
}

final class CreateAccountPresenter {
    
    // MARK: - Private properties
    
    private weak var view: CreateAccountViewControllerProtocol?
    
    
    // MARK: - Lifecycle
    
    init(view: CreateAccountViewControllerProtocol) {
        self.view = view
    }
}


// MARK: - CreateAccountPresenterProtocol

extension CreateAccountPresenter: CreateAccountPresenterProtocol {
    
}
