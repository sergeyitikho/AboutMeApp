//
//  InfoViewController.swift
//  AboutMeApp
//
//  Created by John Doe on 12.10.2023.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var companyLabel: UILabel!
    
    var creator: Creator!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        companyLabel.text = creator?.company ?? "не удалось загрузить данные"
    }
}
