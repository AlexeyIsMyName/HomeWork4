//
//  LoginViewController.swift
//  HomeWork3
//
//  Created by ALEKSEY SUSLOV on 04.02.2021.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: - IB Outlets
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    // MARK: - Private Properties
    private let profile = Profile.getSampleProfile()
    
    // MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginTextField.delegate = self
    }
    
    // MARK: - Override Methods
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        view.endEditing(true)
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let tabBarViewControllers = tabBarController.viewControllers else { return }
        
        for viewController in tabBarViewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.userName = profile.person.name
            }
        }
        
    }
    
    // MARK: - IB Actions
    @IBAction func forgotButtonPressed(_ sender: UIButton) {
        switch sender.tag {
        case 0: showAlarmWith(title: "Oops!",
                              message: "Your login is \(profile.login)  🧐")
        case 1: showAlarmWith(title: "Oops!",
                              message: "Your password is \(profile.password)  🧐")
        default: break
        }
    }
    
    @IBAction func logInButtonPressed() {
        if loginTextField.text != profile.login || passwordTextField.text != profile.password {
            passwordTextField.text = nil
            showAlarmWith(title: "Invalid login or password",
                          message: "Please, enter correct login and password")
        } else {
            performSegue(withIdentifier: "firstSegue",
                         sender: nil)
        }
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        loginTextField.text = nil
        passwordTextField.text = nil
    }
    
    // MARK: - TextFieldDelegate Method
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == loginTextField {
            passwordTextField.becomeFirstResponder()
        }
        return true
    }
    
    // MARK: - Private Methods
    private func showAlarmWith(title: String, message: String) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK",
                                      style: .default))
        present(alert, animated: true, completion: nil)
    }
}
