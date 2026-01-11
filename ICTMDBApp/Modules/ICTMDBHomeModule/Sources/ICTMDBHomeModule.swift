//
//  ICTMDBHomeModule.swift
//  ICTMDBHomeModule
//
//  Created by Engin Gülek on 11.01.2026.
//

import Foundation
import UIKit
import NetworkManagerKit
import HomeModuleProtocol


public class ICTMDBHomeModule : @MainActor HomeModuleProtocol {
    public init () {}
    
   @MainActor public func createHomeModule() -> UIViewController {
        let viewController = HomeViewController()
        
        let router = HomeRouter()
        let interactor = HomeInteractor(network: NetworkManager())
        
        let presenter : any ViewToPresenterHomeProtocol & InteractorToPresenterHomeProtocol
        = HomePresenter(view: viewController, interactor: interactor,router: router)
        viewController.presenter = presenter
        interactor.presenter = presenter
        return viewController
    }
    
   
   
}
