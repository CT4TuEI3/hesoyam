// 
//  MainViewController.swift
//  hesoyam
//
//  Created by CT4TuEI3 on 02.05.2024.
//


import UIKit

final class MainViewController: UIViewController {
    
    // MARK: - Dependency
    
    var presenter: MainPresenterProtocol?
    
    
    // MARK: - UI Elements

    private lazy var imagePicker: UIImagePickerController = {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.mediaTypes = ["public.image"]
        picker.allowsEditing = false
        return picker
    }()

    private lazy var selectPhotoButton: CustomButton = {
        let button = CustomButton(title: "Select photo", isHaveBackground: true, fontSize: .large)
        button.addTarget(self, action: #selector(selectPhotosPressed), for: .touchUpInside)
        return button
    }()
    
    // MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    
    // MARK: - Private Methods
    
    private func setupUI() {
        title = "Main"
        view.backgroundColor = .systemBackground
        view.addSubview(selectPhotoButton)
        setupConstraints()
    }
        
    
    // MARK: - Actions
    
    @objc
    private func selectPhotosPressed() {
        present(imagePicker, animated: true)
    }
}


// MARK: - MainViewControllerProtocol

extension MainViewController: MainViewControllerProtocol {
    
}


// MARK: - UIImagePickerControllerDelegate, UINavigationControllerDelegate

extension MainViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        dismiss(animated: true)
        guard let image = info[.originalImage] as? UIImage else { return }
    }
}


// MARK: - Constraints

private
extension MainViewController {
    func setupConstraints() {
        selectPhotoButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.height.equalTo(48)
            make.leading.trailing.equalToSuperview().inset(16)
        }
    }
}
