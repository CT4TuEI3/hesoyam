//
//  UIStackViewExtension.swift
//  hesoyam
//
//  Created by CT4TuEI3 on 02.05.2024.
//


import UIKit

extension UIStackView {
    func addArrangedSubviews(_ views: UIView...) {
        views.forEach {
            addArrangedSubview($0)
        }
    }
}
