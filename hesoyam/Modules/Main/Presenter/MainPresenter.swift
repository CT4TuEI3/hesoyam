// 
//  MainPresenter.swift
//  hesoyam
//
//  Created by CT4TuEI3 on 02.05.2024.
//


import Foundation

protocol MainViewControllerProtocol: AnyObject {
    
}

protocol MainPresenterProtocol {
    
}

final class MainPresenter {
    
    // MARK: - Private properties
    
    private weak var view: MainViewControllerProtocol?
    
    
    // MARK: - Lifecycle
    
    init(view: MainViewControllerProtocol) {
        self.view = view
    }
}


// MARK: - MainPresenterProtocol

extension MainPresenter: MainPresenterProtocol {
    
}
