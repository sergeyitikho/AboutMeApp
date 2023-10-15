//
//  TabBarController.swift
//  AboutMeApp
//
//  Created by John Doe on 15.10.2023.
//

import UIKit

final class TabBarController: UITabBarController {
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        let appearance = UITabBarAppearance()
        tabBar.standardAppearance = appearance
        tabBar.scrollEdgeAppearance = appearance
        tabBar.items?.last?.title = user.creator.name
        transferData()
    }
    
    private func transferData() {
        guard let viewControllers else { return }
        viewControllers.forEach {
            if let welcomVC = $0 as? WelcomeViewController {
                welcomVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                guard let profileVC = navigationVC.topViewController else { return }
                guard let profileInfoVC = profileVC as? ProfileViewController else { return }
                profileInfoVC.user = user
            }
        }
    }
}
