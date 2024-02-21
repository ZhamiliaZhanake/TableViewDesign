//
//  ViewController.swift
//  TableViewDesign
//
//  Created by Zhamilia Zhanakeeva on 21/2/24.
//

import UIKit
class LoginViewController: UIViewController {
    private var loginView: LoginView = {
        let view = LoginView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
        let loginButton = loginView.loginButton
        loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
    }
    
    private func setupUI() {
        view.addSubview(loginView)
        NSLayoutConstraint.activate([
            loginView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            loginView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            loginView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            loginView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    @objc func loginButtonTapped() {
        guard let phoneNumber = loginView.numberTF.text, !phoneNumber.isEmpty else {
            loginView.instructionLabel.text = "Input your phone number!"
            return
        }

        if correctPhoneNumber(phoneNumber: phoneNumber) {
            navigateToContactsViewController()
        } else {
            loginView.instructionLabel.text = "Input Kyrgyz number, please!"
        }
    }

    private func correctPhoneNumber(phoneNumber: String) -> Bool {
        let correctNumbers: [String: Int] = ["+996": 13, "996": 12, "070": 10, "050": 10, "077": 10, "055": 10, "0222": 10,"0220": 10,"0227": 10]
        for (code, correctLenght) in correctNumbers {
            if phoneNumber.hasPrefix(code) && phoneNumber.count == correctLenght {
                return true
            }
        }
        return false
    }

    private func navigateToContactsViewController() {
        let vc = ContactsViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}

