//
//  CarPlaySceneDelegate.swift
//  HelloWorld
//
//  Created by José Lourenço on 10/05/2022.
//

import Foundation
import CarPlay

class CarPlaySceneDelegate: UIResponder, CPTemplateApplicationSceneDelegate {
    
  func templateApplicationScene(_ templateApplicationScene: CPTemplateApplicationScene,
                                  didConnect interfaceController: CPInterfaceController) {
    
    let screen = CPInformationTemplate(title: "Root", layout: .leading, items: [CPInformationItem(title: "CarPlay", detail: "Hello, world!")], actions: [])
    
    interfaceController.setRootTemplate(screen, animated: true, completion: { _,_ in
        // Do nothing
    })
  }
}
