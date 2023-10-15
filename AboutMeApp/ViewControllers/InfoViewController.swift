//
//  InfoViewController.swift
//  AboutMeApp
//
//  Created by John Doe on 12.10.2023.
//

import UIKit

final class InfoViewController: UIViewController {

    @IBOutlet weak var companyLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        companyLabel.text = user.creator.bio
    }
}
