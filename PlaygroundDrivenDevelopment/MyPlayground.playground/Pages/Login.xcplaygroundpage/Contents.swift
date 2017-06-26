//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

class LoginViewController: UIViewController {
    let rootStackView = UIStackView()
    let titleLabel = UILabel()
    let emailLabel = UILabel()
    let emailTextField = UITextField()
    let emailStackView = UIStackView()
    let passwordLabel = UILabel()
    let passwordTextField = UITextField()
    let passwordStackView = UIStackView()
    let submitButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(white: 0.95, alpha: 1)
        self.rootStackView.backgroundColor = UIColor(white: 0.95, alpha: 1)
        self.rootStackView.translatesAutoresizingMaskIntoConstraints = false
        self.rootStackView.axis = .vertical
        self.rootStackView.spacing = 16
        
        self.titleLabel.text = "Login"
        self.titleLabel.textAlignment = .center
        self.titleLabel.font = UIFont.preferredFont(forTextStyle: .title3, compatibleWith: self.traitCollection)
        self.titleLabel.textColor = UIColor(white: 0.2, alpha: 1)
        
        self.emailLabel.text = "email"
        self.emailLabel.font = UIFont.preferredFont(forTextStyle: .caption1, compatibleWith: self.traitCollection)
        self.emailTextField.borderStyle = .roundedRect
        self.emailStackView.axis = .vertical
        self.emailStackView.addArrangedSubview(self.emailLabel)
        self.emailStackView.addArrangedSubview(self.emailTextField)
        
        self.passwordLabel.text = "Password"
        self.passwordLabel.font = UIFont.preferredFont(forTextStyle: .caption1, compatibleWith: self.traitCollection)
        self.passwordTextField.borderStyle = .roundedRect
        self.passwordStackView.axis = .vertical
        self.passwordStackView.addArrangedSubview(self.passwordLabel)
        self.passwordStackView.addArrangedSubview(passwordTextField)
        
        self.submitButton.setTitle("Log in", for: .normal)
        self.submitButton.titleLabel?.font = UIFont.preferredFont(forTextStyle: .callout, compatibleWith: self.traitCollection)
        self.submitButton.setTitleColor(UIColor(white:1, alpha:0.5), for: .highlighted)
        self.submitButton.backgroundColor = .blue
        self.submitButton.layer.cornerRadius = 6
        self.submitButton.layer.masksToBounds = true
        
        self.view.addSubview(self.rootStackView)
        self.rootStackView.addArrangedSubview(self.titleLabel)
        self.rootStackView.addArrangedSubview(self.emailStackView)
        self.rootStackView.addArrangedSubview(self.passwordStackView)
        self.rootStackView.addArrangedSubview(self.submitButton)
        
        NSLayoutConstraint.activate([
            self.rootStackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.rootStackView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            self.rootStackView.topAnchor.constraint(equalTo: self.view.topAnchor),
            self.rootStackView.bottomAnchor.constraint(lessThanOrEqualTo: self.view.bottomAnchor),
            ])
    }
}

let myVC = LoginViewController()
PlaygroundPage.current.liveView = myVC
