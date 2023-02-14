//
//  ViewController.swift
//  LoginApp
//
//  Created by GEORGII LITVINENKO on 13.02.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet var userTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let userName = "Georgii"
    private let password = "1234"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = userTextField.text
        
    }
    
    @IBAction func logInButtonTapped() {
        guard userTextField.text == userName, passwordTextField.text == password else {
            showAlert(withTitle: "Error!", andMessage: "Incorrect login or password. Try again.")
            return
        }
    }
    
    @IBAction func forgotUserNameButton() {
        showAlert(withTitle:"Your user name is", andMessage: userName)
    }
    
    @IBAction func forgotPasswordButton() {
        showAlert(withTitle: "Your password is", andMessage: password)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userTextField.text = nil
        passwordTextField.text = nil
    }
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}
    

