// 
//  EditPresenter.swift
//  hesoyam
//
//  Created by CT4TuEI3 on 02.05.2024.
//


import Foundation

protocol EditViewControllerProtocol: AnyObject {
    
}

protocol EditPresenterProtocol {
    
}

final class EditPresenter {
    
    // MARK: - Private properties
    
    private weak var view: EditViewControllerProtocol?
    
    
    // MARK: - Lifecycle
    
    init(view: EditViewControllerProtocol) {
        self.view = view
    }
}

// MARK: - EditPresenterProtocol

extension EditPresenter: EditPresenterProtocol {
    
}
