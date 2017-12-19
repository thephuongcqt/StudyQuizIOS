//
//  HomeController.swift
//  StudyQuizIOS
//
//  Created by Nguyen The Phuong on 12/19/17.
//  Copyright © 2017 Nguyen The Phuong. All rights reserved.
//

import UIKit

class HomeController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupKeyboardGestureRecognizer()
        
        let latestController = LatestActivityController()
        let latestNavController = UINavigationController(rootViewController: latestController)
        latestNavController.title = "Latest"
        latestNavController.tabBarItem.image = #imageLiteral(resourceName: "icon_latest")
        
        let classesController = ClassesController()
        let classesNavController = UINavigationController(rootViewController: classesController)
        classesNavController.title = "Classes"
        classesNavController.tabBarItem.image = #imageLiteral(resourceName: "icon_classes")
        
        let foldersController = FoldersController()
        let foldersNavController = UINavigationController(rootViewController: foldersController)
        foldersNavController.title = "Folders"
        foldersNavController.tabBarItem.image = #imageLiteral(resourceName: "icon_folder")
        
        let profileController = ProfileController()
        let profileNavController = UINavigationController(rootViewController: profileController)
        profileNavController.title = "Profile"
        profileNavController.tabBarItem.image = #imageLiteral(resourceName: "icon_profile")
        
        let settingsController = SettingsController()
        let settingsNavController = UINavigationController(rootViewController: settingsController)
        settingsNavController.title = "Settings"
        settingsNavController.tabBarItem.image = #imageLiteral(resourceName: "icon_settings")
        
        viewControllers = [latestNavController, classesNavController, foldersNavController, profileNavController, settingsNavController]
        
        let topBorder = CALayer()
        topBorder.frame = CGRect(x: 0, y: 0, width: 1000, height: 0.5)
        topBorder.backgroundColor = UIColor.rgb(229, 231, 234).cgColor
        tabBar.layer.addSublayer(topBorder)
        tabBar.clipsToBounds = true
        tabBar.tintColor = UIColor.mainColor
        
        navigationController?.navigationBar.barTintColor = .mainColor
        navigationController?.navigationBar.tintColor = .red
        navigationController?.navigationBar.isTranslucent = false
        
        let searchBar = UISearchBar()
        searchBar.frame = CGRect(x: 5, y: 5, width: 300, height: 45)
        searchBar.showsBookmarkButton = false
        searchBar.placeholder = "Search everything in the world!"
        searchBar.barTintColor = .mainColor
        navigationItem.titleView = searchBar
    }
    
}
