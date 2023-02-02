//
//  AppDelegate.swift
//  HelloWorld
//
//  Created by José Lourenço on 10/05/2022.
//

import UIKit
import CarPlay


@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        return true
    }
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {

      if(connectingSceneSession.role == UISceneSession.Role.carTemplateApplication) {
        let scene =  UISceneConfiguration(name: "CarPlay", sessionRole: connectingSceneSession.role)

        // At the time of writing this blog post there seems to be a bug with the info.plist file where
        // the delegateClass isn't set correctly. So we manually set it here.
        scene.delegateClass = CarPlaySceneDelegate.self
                
        return scene
       } else {
         let scene =  UISceneConfiguration(name: "Phone", sessionRole: connectingSceneSession.role)
                
          return scene
       }
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    }
    
}
