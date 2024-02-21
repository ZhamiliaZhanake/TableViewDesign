//
//  LoginView.swift
//  TableViewDesign
//
//  Created by Zhamilia Zhanakeeva on 21/2/24.
//

import UIKit
class LoginView: UIView {
    private let loginLabel = MakerView().makerLabel(text: "Login", size: 18, weight: .bold)
    private let userIconImage: UIImageView = {
        let imageView = MakerView().makerImageView(image: UIImage(systemName: "person"))
        imageView.tintColor = .black
        return imageView
    }()
    private let welcomeLabel = MakerView().makerLabel(text: "Welcome back, Zhamilia", size: 16)
    private let image = MakerView().makerImageView(image: UIImage(named: "illustration"))
    let instructionLabel = MakerView().makerLabel(text: "Enter your mobile number", size: 19, weight: .bold, textColor: .red)
    let numberTF = MakerView().makerTextField(cornerRadius: 10, placeholder: "Enter Number", backgroundColor: .tertiarySystemFill)
    lazy var changeButton: UIButton = {
        let view = UIButton()
        view.setTitle("Change Number?", for: .normal)
        view.setTitleColor(.black, for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 14, weight: .medium)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let loginButton = MakerView().makerButton(title: "Login", titleColor: .white, backgroundColor: .systemRed)
    private let googleImage = MakerView().makerImageView(image: UIImage(named: "google"))
    private let stackview = MakerView().makerStack()
    private let dontHaveAccountLabel = MakerView().makerLabel(text: "Don't have an account?", size: 16)
    lazy var signUpButton: UIButton = {
        let view = UIButton()
        view.setTitle("Sign Up", for: .normal)
        view.setTitleColor(.black, for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 14, weight: .bold)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        backgroundColor = .white
        setupUI()
    }
    private func setupUI() {
        addSubview(loginLabel)
        NSLayoutConstraint.activate([
            loginLabel.topAnchor.constraint(equalTo: topAnchor),
            loginLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20)
        ])
        addSubview(userIconImage)
        NSLayoutConstraint.activate([
            userIconImage.centerYAnchor.constraint(equalTo: loginLabel.centerYAnchor),
            userIconImage.leadingAnchor.constraint(equalTo: loginLabel.trailingAnchor, constant: 5),
            userIconImage.heightAnchor.constraint(equalToConstant: 15),
            userIconImage.widthAnchor.constraint(equalToConstant: 15)
        ])
        addSubview(welcomeLabel)
        NSLayoutConstraint.activate([
            welcomeLabel.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 5),
            welcomeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20)
        ])
        addSubview(image)
        NSLayoutConstraint.activate([
            image.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 15),
            image.centerXAnchor.constraint(equalTo: centerXAnchor),
            image.heightAnchor.constraint(equalToConstant: 250),
            image.widthAnchor.constraint(equalToConstant: 250)
        ])
        addSubview(instructionLabel)
        NSLayoutConstraint.activate([
            instructionLabel.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 10),
            instructionLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
        addSubview(numberTF)
        NSLayoutConstraint.activate([
            numberTF.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 30),
            numberTF.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            numberTF.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            numberTF.heightAnchor.constraint(equalToConstant: 40)
        ])
        addSubview(changeButton)
        NSLayoutConstraint.activate([
            changeButton.topAnchor.constraint(equalTo: numberTF.bottomAnchor, constant: 5),
            changeButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
        addSubview(loginButton)
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: changeButton.bottomAnchor, constant: 20),
            loginButton.heightAnchor.constraint(equalToConstant: 40),
            loginButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            loginButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20)
        ])
        addSubview(googleImage)
        NSLayoutConstraint.activate([
            googleImage.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 10),
            googleImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            googleImage.heightAnchor.constraint(equalToConstant: 50),
            googleImage.widthAnchor.constraint(equalToConstant: 80)
        ])
        addSubview(stackview)
        NSLayoutConstraint.activate([
            stackview.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -30),
            stackview.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackview.widthAnchor.constraint(equalToConstant: 350)
            
        ])
        stackview.addArrangedSubview(dontHaveAccountLabel)
        stackview.addArrangedSubview(signUpButton)
    }
}


