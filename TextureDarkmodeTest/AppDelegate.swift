//
//  AppDelegate.swift
//  TextureDarkmodeTest
//
//  Created by KIM JUNG HWAN on 2020/02/25.
//  Copyright © 2020 KIM JUNG HWAN. All rights reserved.
//

import AsyncDisplayKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        ASDisplayNode.shouldShowRangeDebugOverlay = true
        
        let config: ASConfiguration = ASConfiguration()
        config.experimentalFeatures = .traitCollectionDidChangeWithPreviousCollection
        ASConfigurationManager.test_reset(with: config)
        
        let feedNavigationController = ASNavigationController(rootViewController: FeedViewController())
        feedNavigationController.tabBarItem.title = "Feed"
        feedNavigationController.navigationBar.isTranslucent = false
        
        let tabBarController = ASTabBarController()
        tabBarController.viewControllers = [feedNavigationController]
        tabBarController.selectedIndex = 0
        tabBarController.tabBar.isTranslucent = false
        
        window = UIWindow()
        window?.backgroundColor = .white
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()

        return true
    }

}
