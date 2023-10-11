//
//  ViewController.swift
//  AboutMeApp
//
//  Created by John Doe on 08.10.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    private let user = "User"
    private let password = "Password"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameTextField.autocorrectionType = .no
        usernameTextField.autocapitalizationType = .none
        passwordTextField.autocorrectionType = .no
        passwordTextField.autocapitalizationType = .none
        passwordTextField.isSecureTextEntry = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    
    @IBAction func forgotUsernamePressed() {
        let alert = UIAlertController(title: "", message: "Пользователь \(user)", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.usernameTextField.text = ""
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func forgotPasswordPressed() {
        let alert = UIAlertController(title: "", message: "Пароль \(password)", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.usernameTextField.text = ""
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard usernameTextField.text == user, passwordTextField.text == password else {
            let alert = UIAlertController(title: "Ошибка", message: "Неверное имя пользователя или пароль", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "welcomeSegue" {
            if let welcomeVC = segue.destination as? WelcomeViewController {
                welcomeVC.userName = usernameTextField.text
            }
        }
    }
    
    @IBAction func unwindToLogin(segue: UIStoryboardSegue) {
        usernameTextField.text = ""
        passwordTextField.text = ""
    }
    
    
}

