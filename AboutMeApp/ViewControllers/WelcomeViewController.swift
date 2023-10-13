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
    var user: User!
    var creator: Creator!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usernameLabel.text = "Привет, \(user.login)!"
        creatorWelcome.text = "Меня зовут \(creator.name)."
    }
}
