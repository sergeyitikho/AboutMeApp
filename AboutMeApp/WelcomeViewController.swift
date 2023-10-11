//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by John Doe on 08.10.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBOutlet weak var creatorWelcome: UILabel!
    var userName: String?
    var creatorName: String?
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let name = userName {
            usernameLabel.text = "Привет, \(name)!"
        }
        if let name = creatorName {
            creatorWelcome.text = "Меня зовут \(name)!"
        }
    }
}
