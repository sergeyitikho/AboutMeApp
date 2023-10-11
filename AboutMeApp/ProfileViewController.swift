//
//  ProfileViewController.swift
//  AboutMeApp
//
//  Created by John Doe on 11.10.2023.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var creatorBioLabel: UILabel!
    var creatorBio: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let bio = creatorBio {
            creatorBioLabel.text = "\(bio)!"
        }
    }
}
