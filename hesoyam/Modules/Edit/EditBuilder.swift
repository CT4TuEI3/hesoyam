// 
//  EditBuilder.swift
//  hesoyam
//
//  Created by CT4TuEI3 on 02.05.2024.
//


import UIKit

final class EditBuilder {
    static func createEditModule() -> UIViewController {
        let view = EditViewController()
        let presenter = EditPresenter(view: view)
        view.presenter = presenter
        return view
    }
}
