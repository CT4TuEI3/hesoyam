// 
//  MainBuilder.swift
//  hesoyam
//
//  Created by CT4TuEI3 on 02.05.2024.
//


import UIKit

final class MainBuilder {
    static func createMainModule() -> UIViewController {
        let view = MainViewController()
        let presenter = MainPresenter(view: view)
        view.presenter = presenter
        return view
    }
}
