//
//  MainViewController.swift
//  hesoyam
//
//  Created by CT4TuEI3 on 02.05.2024.
//


import UIKit
import PencilKit
import SnapKit

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
    
    private let editImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let canvasView: PKCanvasView = {
        let canvas = PKCanvasView()
        canvas.backgroundColor = .clear
        canvas.becomeFirstResponder()
        return canvas
    }()
    
    private let toolPicker = PKToolPicker()
    
    
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
        selectPhotoButton.removeFromSuperview()
        view.addSubviews(editImageView, canvasView)
        guard let image = info[.originalImage] as? UIImage else { return }
        editImageView.image = image
        toolPicker.setVisible(true, forFirstResponder: canvasView)
        toolPicker.addObserver(canvasView)
        
        canvasConstraints()
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
    
    func canvasConstraints() {
        editImageView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.leading.trailing.bottom.equalToSuperview()
        }
        
        canvasView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.leading.trailing.bottom.equalToSuperview()
        }
    }
}
