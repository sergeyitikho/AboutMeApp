//
//  ProfileViewController.swift
//  AboutMeApp
//
//  Created by John Doe on 11.10.2023.
//

import UIKit
final class ProfileViewController: UIViewController {

    @IBOutlet weak var creatorBioLabel: UILabel!
    var creator: Creator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        creatorBioLabel.text = creator.bio
    }
}
