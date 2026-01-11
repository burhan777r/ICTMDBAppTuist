//
//  ICTMDBAllListModule.swift
//  ICTMDBAllListModule
//
//  Created by Engin Gülek on 11.01.2026.
//

import Foundation
import SwiftUI
import NetworkManagerKit
import AllListModuleProtocol

public class ICTMDBAllListModule : @MainActor AllListModuleProtocol{
    
    public init() { }
    
    @MainActor public func createAllListModule(type: AllListType) -> UIViewController {
        let viewController = AllListViewController()
        let router = AllListRouter()
        let interactor = AllListInteractor(network: NetworkManager())
        
        let presenter : any ViewToPresenterAllListProtocol & InteractorToPresenterAllListProtocol
        = AllListPresenter(view: viewController, interactor: interactor, router: router)
        viewController.presenter = presenter
        interactor.presenter = presenter
        let listType:ListType = type == .popular ? .popular : .airingToday
        presenter.getAllList(at: listType)
        return viewController
    }
    
    
    
    @MainActor static func mockCreateAllListModule() -> UIViewController {
        let viewController = AllListViewController()
        let router = AllListRouter()
        let interactor = AllListInteractor(network: NetworkManager())
        
        let presenter : any ViewToPresenterAllListProtocol & InteractorToPresenterAllListProtocol
        = AllListPresenter(view: viewController, interactor: interactor, router: router)
        viewController.presenter = presenter
        interactor.presenter = presenter
     
        presenter.getAllList(at: .popular)
        return viewController
    }
 

    
}
