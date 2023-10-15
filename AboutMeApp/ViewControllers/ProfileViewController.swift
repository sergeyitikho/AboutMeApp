//
//  ProfileViewController.swift
//  AboutMeApp
//
//  Created by John Doe on 11.10.2023.
//

import UIKit
final class ProfileViewController: UIViewController {

    @IBOutlet weak var creatorBioLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        creatorBioLabel.text = user.creator.company
        let backButton = UIBarButtonItem()
        backButton.title = user.creator.name
        navigationItem.backBarButtonItem = backButton
        title = user.creator.name
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userBioVC = segue.destination as? InfoViewController else { return }
        userBioVC.user = user
    }
}
