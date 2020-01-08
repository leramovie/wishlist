//
//  AppDelegate.swift
//  Wish list
//
//  Created by Igor Mikhalev on 19.12.2019.
//  Copyright © 2019 Parakluence. All rights reserved.
//

import UIKit
import Firebase
import Parse

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()

        
        let config = ParseClientConfiguration { (theConfig) in
            theConfig.applicationId = "lerawishlist"
            theConfig.server = "http://wishlistserver.herokuapp.com/parse"
            
        }
        
        
        Parse.initialize(with: config)
        
        // parse-dashboard --appId lerawishlist --masterKey drunniki --serverURL "http://whishlistserver.herokuapp.com/parse"
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

