//
//  SceneDelegate.swift
//  ICTMDBApp
//
//  Created by Engin Gülek on 11.01.2026.
//

import UIKit
import DependencyKit
import HomeModuleProtocol
import ICTMDBHomeModule
import DetailModuleProtocol
import ICTMDBDetailModule
import AllListModuleProtocol
import ICTMDBAllListModule
class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    let container = DependencyRegister.shared.container
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else {return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        
        
        container.register(HomeModuleProtocol.self) { _ in
            ICTMDBHomeModule()
        }
        
        container.register(AllListModuleProtocol.self) { _ in
            ICTMDBAllListModule()
        }
        
        container.register(DetailModuleProtocol.self) { _ in
            ICTMDBDetailModule()
        }
        
        let homeModule: HomeModuleProtocol = DependencyRegister.shared.resolve(HomeModuleProtocol.self)
        let homeViewController = homeModule.createHomeModule()
        
        window?.rootViewController =  UINavigationController(rootViewController: homeViewController)
        window?.makeKeyAndVisible()
    }
}
