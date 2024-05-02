// 
//  LoginBuilder.swift
//  hesoyam
//
//  Created by CT4TuEI3 on 02.05.2024.
//


import UIKit

final class LoginBuilder {
    static func createLoginModule() -> UIViewController {
        let view = LoginViewController()
        let presenter = LoginPresenter(view: view)
        view.presenter = presenter
        return view
    }
}
