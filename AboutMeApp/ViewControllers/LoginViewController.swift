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
 
    let user = User(login: "User", password: "Password")
    let creator = Creator(name: "John Doe", age: 66, company: "Limited Inc", bio: "bla bla bla", gender: "Male")
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func forgotUsernamePressed() {
        let alert = UIAlertController(title: "", message: "Пользователь \(user.login)", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.usernameTextField.text = ""
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func forgotPasswordPressed() {
        let alert = UIAlertController(title: "", message: "Пароль \(user.password)", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.usernameTextField.text = ""
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard usernameTextField.text == user.login, passwordTextField.text == user.password else {
            let alert = UIAlertController(title: "Ошибка", message: "Неверное имя пользователя или пароль", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewcontrollers = tabBarController.viewControllers else { return }
        for viewController in viewcontrollers {
            if let firstVC = viewController as? WelcomeViewController {
                firstVC.user = user
                firstVC.creator = creator
            } else if let navigationVC = viewController as? UINavigationController {
                for viewcontroller in navigationVC.viewControllers {
                    if let profileVC = viewcontroller as? ProfileViewController {
                        profileVC.creator = creator
                    }
//                    else if let infoVC = viewcontroller as? InfoViewController {
//                        infoVC.creator = creator
//                    }
                }
            }

        }
    }
    
    @IBAction func unwindToLogin(segue: UIStoryboardSegue) {
        usernameTextField.text = ""
        passwordTextField.text = ""
    }
}

