//
//  AppDelegate.swift
//  PinOn
//
//  Created by Jeffrey Chang on 2/22/19.
//  Copyright © 2019 Jeffrey Chang. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        window?.makeKeyAndVisible()
        let vc = ProfileViewController()
        let userProfileInfo = mockUserProfileInfo()
        let viewModel = ProfileViewModel(user: userProfileInfo)
        vc.profileViewModel = viewModel
        window?.rootViewController = vc
        return true
    }
    
    fileprivate func mockUserProfileInfo() -> UserProfileInfo {
        return UserProfileInfo(name: "Bernard Lowe", email: "something@gmail.com", image: #imageLiteral(resourceName: "profileImage"))
    }
}

