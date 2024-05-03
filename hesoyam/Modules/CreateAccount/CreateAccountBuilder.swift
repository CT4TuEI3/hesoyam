// 
//  CreateAccountBuilder.swift
//  hesoyam
//
//  Created by CT4TuEI3 on 02.05.2024.
//


import UIKit

final class CreateAccountBuilder {
    static func createCreateAccountModule() -> UIViewController {
        let view = CreateAccountViewController()
        let presenter = CreateAccountPresenter(view: view)
        view.presenter = presenter
        return view
    }
}
