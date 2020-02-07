//
//  AppDelegate.swift
//  Silofit
//
//  Created by Furqan Khan on 2/4/20.
//  Copyright © 2020 Silofit. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setupWindow()
        return true
    }
    
    private func setupWindow() {
        let rootCoordinator = RootCoordinator()
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = rootCoordinator.start()
        self.window?.makeKeyAndVisible()
    }
}

