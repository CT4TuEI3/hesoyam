// 
//  ResetPasswordBuilder.swift
//  hesoyam
//
//  Created by CT4TuEI3 on 02.05.2024.
//


import UIKit

final class ResetPasswordBuilder {
    static func createResetPasswordModule() -> UIViewController {
        let view = ResetPasswordViewController()
        let presenter = ResetPasswordPresenter(view: view)
        view.presenter = presenter
        return view
    }
}
