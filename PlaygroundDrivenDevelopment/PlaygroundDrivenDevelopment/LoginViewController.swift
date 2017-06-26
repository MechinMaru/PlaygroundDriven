//
//  LoginViewController.swift
//  PlaygroundDrivenDevelopment
//
//  Created by MECHIN on 6/26/17.
//  Copyright © 2017 MECHIN. All rights reserved.
//

import UIKit

public class LoginViewController: UIViewController {

    @IBOutlet weak var rootStackView: UIStackView!
   
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var emailStackView: UIStackView!
   
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordStackView: UIStackView!
    @IBOutlet weak var submitButton: UIButton!
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        self.rootStackView.axis = .vertical
        self.rootStackView.translatesAutoresizingMaskIntoConstraints = false
        self.rootStackView.spacing = 24
        self.rootStackView.layoutMargins = self.traitCollection.horizontalSizeClass == .regular
            ? .init(top: 36, left: 36, bottom: 36, right: 36)
            : .init(top: 16, left: 16, bottom: 16, right: 16)
        self.rootStackView.isLayoutMarginsRelativeArrangement = true

        self.emailLabel.text = "Email"
        self.emailLabel.font = UIFont.preferredFont(forTextStyle: .caption1, compatibleWith: self.traitCollection)
        self.emailTextField.borderStyle = .roundedRect
        self.emailStackView.spacing = 3
        self.emailStackView.axis = .vertical
        
        self.passwordLabel.text = "Password"
        self.passwordLabel.font = UIFont.preferredFont(forTextStyle: .caption1, compatibleWith: self.traitCollection)
        self.passwordTextField.borderStyle = .roundedRect
        self.passwordStackView.spacing = 3
        self.passwordStackView.axis = .vertical
        
        self.submitButton.setTitle("Login", for: .normal)
        self.submitButton.setTitleColor(.white, for: .normal)
        self.submitButton.setTitleColor(UIColor(white: 1, alpha: 0.5), for: .highlighted)
        self.submitButton.titleLabel?.font = UIFont.preferredFont(forTextStyle: .callout, compatibleWith: self.traitCollection)
        self.submitButton.backgroundColor = UIColor(red: 0.3, green: 0.3, blue: 1, alpha: 1)
        self.submitButton.layer.masksToBounds = true
        self.submitButton.layer.cornerRadius = 6
    }

    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
