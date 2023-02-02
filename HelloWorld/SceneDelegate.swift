//
//  UIWindowSceneDelegate.swift
//  HelloWorld
//
//  Created by José Lourenço on 09/05/2022.
//

import Foundation
import UIKit
import SwiftUI

@available(iOS 14, *)
class SceneDelegate: UIResponder, UIWindowSceneDelegate {
  var window: UIWindow?
  
  func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    
  let contentView = ContentView()
    
  if let windowScene = scene as? UIWindowScene {
     let window = UIWindow(windowScene: windowScene)
     window.rootViewController = UIHostingController(rootView: contentView)
     self.window = window
     window.makeKeyAndVisible()
  }
  }
}
