//
//  CustomButton.swift
//  hesoyam
//
//  Created by CT4TuEI3 on 02.05.2024.
//


import UIKit

enum FontSize {
    case large
    case medium
    case small
}

final class CustomButton: UIButton {
    
    // MARK: - Private properties
    
    private let fontSize: FontSize
    private let isHaveBackground: Bool
    
    
    // MARK: - Lifecycle
    
    init(title: String, isHaveBackground: Bool, fontSize: FontSize) {
        self.isHaveBackground = isHaveBackground
        self.fontSize = fontSize
        super.init(frame: .zero)
        setTitle(title, for: .normal)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - Private methods
    
    private func setupLayout() {
        layer.cornerRadius = 16
        layer.masksToBounds = true
        
        backgroundColor = isHaveBackground ? .systemBlue : .clear
        let titleColor: UIColor = isHaveBackground ? .white : .systemBlue
        setTitleColor(titleColor, for: .normal)
        
        switch fontSize {
            case .large:
                titleLabel?.font = .systemFont(ofSize: 22, weight: .bold)
            case .medium:
                titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
            case .small:
                titleLabel?.font = .systemFont(ofSize: 16, weight: .regular)
        }
    }
}
